package com.dao;


import com.pojo.NetworkPo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NetworkMapper {

    //增加一个网点
    public int add(NetworkPo networkPo);

    //删除一个网点通过ID
    public int deleteNetworkById(int id);

    //更新网点
    public int update(NetworkPo networkPo);

    //通过id查询网点
    public List<NetworkPo> selectById(int id);

    //查询所有
    public List<NetworkPo> selectAll();

    //通过id查询wkt
    public String getWktById(int id);
}
