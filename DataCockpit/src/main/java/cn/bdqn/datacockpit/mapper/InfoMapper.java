package cn.bdqn.datacockpit.mapper;

import java.util.List;
import java.util.Map;

import cn.bdqn.datacockpit.entity.Info;

public interface InfoMapper {
    List<Info> selectAllInfo();

    int deleteByPrimaryKey(Integer id);

    int insert(Info record);

    int insertSelective(Info record);

    Info selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Info record);

    int updateByPrimaryKey(Info record);

    Integer selectMaxId();
    
    List<Map<String, Object>> getAllInfos();
    
    List<Map<String, Object>> getTasks();
}