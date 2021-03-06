package cn.bdqn.datacockpit.service;

import java.util.List;

import cn.bdqn.datacockpit.entity.Companyinfo;

public interface CompanyinfoService {

	/**
	 * 查询所有公司信息
	 * 
	 * @return
	 */
	List<Companyinfo> selectAllCompanies();

	/**
	 * @Title: selectAllCompanies
	 * @Description: TODO(获取所有通过审核的公司)<br>
	 * @return List<Companyinfo>
	 */
	List<Companyinfo> getAllCompanies();

	/**
	 * 根据公司id删除公司信息
	 * 
	 * @param id
	 * @return
	 */
	int deleteByPrimaryKey(Integer id);

	/**
	 * 根据公司记录添加公司客户
	 * 
	 * @param record
	 * @return
	 */
	int insert(Companyinfo record);

	/**
	 * 动态查询公司信息
	 * 
	 * @param record
	 * @return
	 */
	int insertSelective(Companyinfo record);

	/**
	 * 根据公司id查公司信息
	 * 
	 * @param id
	 * @return
	 */
	Companyinfo selectByPrimaryKey(Integer id);

	/**
	 * 动态更新公司信息
	 * 
	 * @param id
	 * @return
	 */
	int updateByPrimaryKeySelective(Companyinfo record);

	/**
	 * 更新公司信息
	 * 
	 * @param id
	 * @return
	 */
	int updateByPrimaryKey(Companyinfo record);

	/**
	 * 根据phone查登录状况
	 * 
	 * @param phone
	 * @return
	 */
	Companyinfo selectByPhone(String phone);

	/**
	 * 根据phone查注册号码是否存在
	 * 
	 * @param phone
	 * @return
	 */
	int selectPhoneNum(String phone);

	/**
	 * @author: Li ShuCheng
	 * @Title: insertUserInfo
	 * @Description: 已通过审核的用户插入userinfo表格 <br>
	 * @param:  @param compan
	 * @param:  @return   
	 * @return: int   
	 * @throws
	 */
	int insertUserInfo(Companyinfo compan);

	/**
	 * @author: Li ShuCheng
	 * @Title: selectIdByp
	 * @Description: 添加user_role <br>
	 * @param:  @param phone
	 * @param:  @return   
	 * @return: int   
	 * @throws
	 */
	int selectIdByp(String phone);

	/**
	 * 
	 * @author: Li ShuCheng
	 * @Title: insertUser_role
	 * @Description: 插入权限表 <br>
	 * @param:  @param num
	 * @param:  @return   
	 * @return: int   
	 * @throws
	 */
	int insertUser_role(int num);

}
