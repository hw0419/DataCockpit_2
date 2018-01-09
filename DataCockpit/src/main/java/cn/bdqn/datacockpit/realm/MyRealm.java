package cn.bdqn.datacockpit.realm;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import cn.bdqn.datacockpit.entity.Userinfo;
import cn.bdqn.datacockpit.service.UserinfoService;

public class MyRealm extends AuthorizingRealm {

    @Autowired
    private UserinfoService userService;

    // 验证当前登录的用户
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        UsernamePasswordToken upToken = (UsernamePasswordToken) token;
        Session session = SecurityUtils.getSubject().getSession();
        String phone = upToken.getUsername();
        Userinfo user1 = userService.getByPhone(phone);
        if (null != user1) {
            // 1). principal：认证的实体信息，可以是username,也可以是数据表对应的用户实体类对象
            Object principal = user1.getPhone();
            // 2). credentials：从数据表中获取的密码。
            Object credentials = user1.getPassword();
            ByteSource credentialsSalt = ByteSource.Util.bytes(user1.getPhone());
            // 3). realmName: 当前realm对象的name，调用父类的getName()方法即可。
            String realmName = getName();
            AuthenticationInfo info = new SimpleAuthenticationInfo(principal, credentials, credentialsSalt, realmName);
            return info;
        }
        if (user1.getState() == 0) {
            return null;
        }
        return null;
    }

    // 为当前登录的用户授予角色和权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        String phone = (String) principals.getPrimaryPrincipal();
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        authorizationInfo.setRoles(userService.getRoles(phone));
        authorizationInfo.setStringPermissions(userService.getPermissions(phone));
        return authorizationInfo;
    }

}
