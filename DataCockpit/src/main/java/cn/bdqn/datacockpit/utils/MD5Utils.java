/**
 * Project Name:DataCockpit
 * File Name:MD5Utils.java
 * Package Name:cn.bdqn.datacockpit.utils
 * Date:2018年1月6日下午3:59:52
 * Copyright (c) 2018, HW All Rights Reserved.
 *
*/

package cn.bdqn.datacockpit.utils;

import org.apache.shiro.crypto.hash.SimpleHash;

/**
 * Description:	   <br/>
 * Date:     2018年1月6日 下午3:59:52 <br/>
 * @author   HW
 * @version  
 * @see 	 
 */
public class MD5Utils {
    public static Object md5(String salt, String source) {
        String algorithmName = "MD5";
        int hashIterations = 1;
        Object result = new SimpleHash(algorithmName, source, salt, hashIterations);
        return result;
    }
}
