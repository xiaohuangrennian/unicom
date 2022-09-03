package com.dao;

import com.pojo.NetworkPo;
import com.pojo.ResidencePo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ResidenceMapper {
    //增加一个小区
    public int add(ResidencePo residencePo);

    //删除一个小区
    public int deleteResidence(ResidencePo residencePo);

    //更新小区
    public int update(ResidencePo residencePo);

    //通过城市、区县、街道，小区名查询小区
    public List<ResidencePo> select(String city,String region,String street,String name);

    //查询所有
    public List<ResidencePo> selectAll();

    //通过城市、区县、街道，小区名查询wkt
    public String[] getWktById(String city,String region,String street,String name);
}
