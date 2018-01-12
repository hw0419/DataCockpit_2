/**
 * Project Name:DataCockpit
 * File Name:LoginController.java
 * Package Name:cn.bdqn.datacockpit.controller
 * Date:2017年8月23日上午9:44:48
 * Copyright (c) 2017, bluemobi All Rights Reserved.
 *
 */

package cn.bdqn.datacockpit.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.bdqn.datacockpit.entity.Companyinfo;
import cn.bdqn.datacockpit.entity.Info;
import cn.bdqn.datacockpit.entity.Userinfo;
import cn.bdqn.datacockpit.service.CompanyinfoService;
import cn.bdqn.datacockpit.service.InfoService;
import cn.bdqn.datacockpit.service.UserinfoService;
import cn.bdqn.datacockpit.utils.LoggerUtils;
import cn.bdqn.datacockpit.utils.MD5Utils;
import cn.bdqn.datacockpit.utils.VerifyCodeUtils;

/**
 * Description: <br/>
 * Date: 2017年8月23日 上午9:44:48 <br/>
 * 
 * @author jiaoHJ
 * @version
 * @see
 */
@Controller
@Scope("prototype")
public class LoginController {
    @Autowired
    private CompanyinfoService companyinfo;

    @Autowired
    private UserinfoService userinfo;

    @Autowired
    private InfoService infoService;

    private static final Logger LOG = Logger.getLogger(LoginController.class);

    @RequestMapping(value = "getYzm")
    public @ResponseBody List<String> getYzm(HttpServletResponse response, HttpServletRequest request) {
        List<String> lists = new ArrayList<String>();
        try {
            response.setHeader("Pragma", "No-cache");
            response.setHeader("Cache-Control", "no-cache");
            response.setDateHeader("Expires", 0);
            response.setContentType("image/jpeg");

            // 生成随机字串
            String verifyCode = VerifyCodeUtils.generateVerifyCode(4);
            // 存入会话session
            HttpSession session = request.getSession(true);
            session.setAttribute("code", verifyCode.toLowerCase());
            // 生成图片
            int w = 146, h = 33;
            VerifyCodeUtils.outputImage(w, h, response.getOutputStream(), verifyCode);
            lists.add("OK");
            return lists;
        } catch (Exception e) {
            LoggerUtils.fmtError(getClass(), e, "获取验证码异常：%s", e.getMessage());
        }
        return lists;

    }

    /**
     * 登录
     * 
     * @param phone
     * @param password
     * @param onLine
     * @param res
     * @param req
     * @return
     */
    @RequestMapping("/login2")
    public String login(HttpSession session, HttpServletResponse res, HttpServletRequest req) {
        session = req.getSession();
        String phone = (String) session.getAttribute("phone");
        List<Map<String, Object>> lists = new ArrayList<Map<String, Object>>();
        // 在公司信息查询这个电话号码 判断是否为企业用户
        Companyinfo compi = companyinfo.selectByPhone(phone);
        // 在用户表查询 这个号码 判断是否存在
        Userinfo ui = userinfo.getByPhone(phone);
        // 从session获取验证码方法中存入的验证码
        @SuppressWarnings("unused")
        String trueCode = (String) session.getAttribute("code");
        // 对比验证码
        /*
         * if(!trueCode.equals(code2)){ //验证码不正确则返回不正确 req.setAttribute("erroMessage",
         * "*验证码不正确"); }
         */
        // 根据账号判断该用户属于公司还是管理员
        List<Info> infoList = infoService.selectAllInfo();
        Date time = new Date();
        Date ti1 = new Date(time.getTime() - 2 * 24 * 60 * 60 * 1000);
        for (Info info : infoList) {
            Date date = info.getPublishDate();
            Map<String, Object> map = new HashMap<String, Object>();
            if (ti1.before(date)) {
                map.put("date", 1);
            } else {
                map.put("date", 0);
            }

            map.put("info", info);
            lists.add(map);

        }
        if (compi != null) {
            session.setAttribute("infos", compi);
            session.setAttribute("flag", lists);
            return "redirect:/user_index.shtml";
        }
        // 判断账号密码是否正确（管理员）
        if (ui != null) {
            session.setAttribute("infos", ui);
            session.setAttribute("flag", lists);
            return "redirect:/selectAllCompanyinfo.shtml";
        }
        session.setAttribute("erroMessage", "*账号或者密码输入有误！");
        return "redirect:/login.jsp";
    }

    /*
     * shiro方法登录
     */
    @RequestMapping("/login")
    public String login(Userinfo user, boolean onLine, String code2, HttpServletRequest request) {
        // System.out.println("onLine------>" + onLine);
        HttpSession session = request.getSession();
        // 首先判断验证码是否正确
        String trueCode = (String) session.getAttribute("code");
        if (!code2.equals(trueCode)) {
            session.setAttribute("erroMessage", "*验证码错误！");
            return "redirect:/login.jsp";
        }
        Subject subject = SecurityUtils.getSubject();
        if (!subject.isAuthenticated()) {
            // 把用户名和密码封装为 UsernamePasswordToken 对象
            UsernamePasswordToken token = new UsernamePasswordToken(user.getPhone(), user.getPassword());
            // rememberme
            token.setRememberMe(onLine);
            try {
                subject.login(token);
                // Session session2 = subject.getSession();
                request.getSession().setAttribute("phone", user.getPhone());

                return "redirect:/login2.shtml";
            } catch (Exception e) {
                e.printStackTrace();
                session.setAttribute("erroMessage", "*用户名或密码错误！");
                return "redirect:/login.jsp";
            }
        }
        return "redirect:/login2.shtml";
    }

    /**
     * 注册（申请合作）
     * 
     * @param cominfo
     * @return
     */
    @RequestMapping("/register")

    public String register(Companyinfo cominfo) {
        cominfo.setState(0);
        String phone = cominfo.getPhone();
        String password = cominfo.getPassword();
        String newpwd = MD5Utils.md5(phone, password).toString();
        cominfo.setPassword(newpwd);
        int flag = companyinfo.insert(cominfo);
        if (flag >= 1) {
            return "/WEB-INF/front/shenqing.jsp";
        }

        return "/WEB-INF/front/error.jsp";
    }

    /**
     * 修改资料，先获取存在session里面的实体类
     * 
     * @param req
     * @return
     */
    @RequestMapping("/updateInfo")
    public String updateInfo(HttpServletRequest req) {
        HttpSession session = req.getSession();
        Companyinfo compi = (Companyinfo) session.getAttribute("infos2");
        session.setAttribute("comp", compi);

        return "redirect:/user_update.shtml";
    }

    /**
     * 动态修改资料，修改密码不在此页面
     * 
     * @param company
     * @param req
     * @return
     */
    @RequestMapping("/updateInfo1")
    public String updateInfo1(Companyinfo company, HttpServletRequest req) {
        // System.out.println(company);
        HttpSession session = req.getSession();
        int flag = companyinfo.updateByPrimaryKeySelective(company);
        if (flag >= 1) {
            return "redirect:/user_index.shtml";
        }
        session.setAttribute("message", "*修改失败！");
        return "redirect:/user_update.shtml";
    }

    /**
     * 把密码带到页面
     * 
     * @param req
     * @return
     */
    @RequestMapping("/updatePassword")

    public String updatePassword(HttpServletRequest req) {
        HttpSession session = req.getSession();
        Companyinfo compi = (Companyinfo) session.getAttribute("infos");
        session.setAttribute("comp", compi);
        return "redirect:/user_pass.shtml";
    }

    /**
     * 修改密码
     * 
     * @param company
     * @return
     */
    @RequestMapping("/updatePassword1")

    public String updatePassword1(Companyinfo company) {
        int flag = companyinfo.updateByPrimaryKeySelective(company);
        if (flag >= 1) {
            return "redirect:/user_index.shtml";
        }
        return "redirect:/user_pass.shtml";
    }

    /**
     * 检验注册的手机号码是否存在
     * 
     * @param phone
     * @return
     */
    @RequestMapping("/testPhone")
    @ResponseBody
    public Map<String, Object> testPhone(String phone) {
        int flag = companyinfo.selectPhoneNum(phone);
        Map<String, Object> hm = new HashMap<String, Object>();
        if (flag >= 1) {
            hm.put("num", 1);
            hm.put("error", "*您输入的手机号码已存在！");
        } else {
            hm.put("num", 0);
            hm.put("error", "");
        }
        return hm;
    }

    /**
     * 退出登录
     * 
     * @param req
     * @return
     */
    @RequestMapping("/exit")
    public String exit(HttpServletRequest req) {
        req.getSession().removeAttribute("comp");

        return "WEB-INF/front/exit.jsp";
    }

    /**
     * 公告详情
     * 
     * @param req
     * @return
     */
    @RequestMapping("/gongGao")
    public String gongGao(Integer id, Model model) {
        // System.out.println(id);
        Info info = infoService.selectByPrimaryKey(id);
        model.addAttribute("gg", info);
        model.addAttribute("checks", "tongzhi");
        return "user_gongGao.pages";
    }

    /**
     * 公告详情
     * 
     * @param req
     * @return
     */
    @RequestMapping("/selectTongzhi")
    public String selectTongzhi(Model model) {
        List<Info> lists = infoService.selectAllInfo();
        model.addAttribute("infoList", lists);
        model.addAttribute("checks", "tongzhi");
        return "user_tongzhi.pages";
    }

    @RequestMapping("/login1")
    public String login1(Userinfo user, boolean onLine, String code2, HttpServletRequest req) {
        Subject currentUser = SecurityUtils.getSubject();
        Session session = currentUser.getSession();
        session.setAttribute("phone", user.getPhone());
        // 首先判断验证码是否正确
        String trueCode = (String) session.getAttribute("code");
        if (!code2.toLowerCase().equals(trueCode)) {
            req.setAttribute("erroMessage", "*验证码错误！");
            return "/login.jsp";
        }
        // 判断state，如果为0则为锁定用户，不允许登陆
        if (userinfo.getByPhone(user.getPhone()).getState() == 0) {
            req.setAttribute("erroMessage", "*用户已被锁定，请更换账号登陆！");
            return "/login.jsp";
        }
        // session.setAttribute("phone", user.getPhone());
        if (!currentUser.isAuthenticated()) {
            // 把用户名和密码封装为 UsernamePasswordToken 对象
            UsernamePasswordToken token = new UsernamePasswordToken(user.getPhone(), user.getPassword());
            token.setRememberMe(onLine);
            try {
                // System.out.println("1--->" + token.hashCode());
                // 执行登录.
                currentUser.login(token);

            } catch (AuthenticationException ae) {
                // unexpected condition? error?
                ae.printStackTrace();
            }
        }
        // 根据用户角色进行页面跳转
        Set<String> roles = userinfo.getRoles(user.getPhone());
        Userinfo ui = userinfo.getByPhone(user.getPhone());
        Companyinfo compi = companyinfo.selectByPhone(user.getPhone());
        List<Map<String, Object>> lists = new ArrayList<Map<String, Object>>();
        List<Info> infoList = infoService.selectAllInfo();
        Date time = new Date();
        Date ti1 = new Date(time.getTime() - 2 * 24 * 60 * 60 * 1000);
        for (Info info : infoList) {
            Date date = info.getPublishDate();
            Map<String, Object> map = new HashMap<String, Object>();
            if (ti1.before(date)) {
                map.put("date", 1);
            } else {
                map.put("date", 0);
            }

            map.put("info", info);
            lists.add(map);

        }
        if (roles.contains("super") || roles.contains("admin")) {
            session.setAttribute("infos1", ui);
            session.setAttribute("flag", lists);
            return "redirect:/selectAllCompanyinfo.shtml";
        } else if (roles.contains("customer")) {
            session.setAttribute("infos2", compi);
            session.setAttribute("flag", lists);
            return "redirect:/user_index.shtml";
        }
        req.setAttribute("erroMessage", "*账号或者密码输入有误！");
        return "/login.jsp";
    }
}
