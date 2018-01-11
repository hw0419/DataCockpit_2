package cn.bdqn.datacockpit.mapper;

import java.util.List;

import cn.bdqn.datacockpit.entity.Companyinfo;

public interface CompanyinfoMapper {

	List<Companyinfo> selectAllCompanies();

	List<Companyinfo> getAllCompanies();

	int deleteByPrimaryKey(Integer id);

	int insert(Companyinfo record);

	int insertSelective(Companyinfo record);

	Companyinfo selectByPrimaryKey(Integer id);

	Companyinfo selectByPhone(String phone);

	int updateByPrimaryKeySelective(Companyinfo record);

	int updateByPrimaryKey(Companyinfo record);

	int selectPhoneNum(String phone);

	/**
	 * @author: Li ShuCheng
	 * @Title: insertUserInfo
	 * @Description: 通过的用户插入userinfo <br>
	 * @param:  @param companyinfo
	 * @param:  @return   
	 * @return: int   
	 * @throws
	 */
	int insertUserInfo(Companyinfo comp);

	int selectByP(String phone);

	int insertUser_role(int num);

}