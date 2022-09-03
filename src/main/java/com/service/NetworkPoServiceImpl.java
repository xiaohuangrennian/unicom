package com.service;

import com.dao.NetworkMapper;
import com.pojo.NetworkPo;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class NetworkPoServiceImpl implements NetworkPoService {
    //service调用Dao层
    private NetworkMapper networkMapper;

    public void setNetworkMapper(NetworkMapper networkMapper) {
        this.networkMapper = networkMapper;
    }

    @Override
    public int add(NetworkPo networkPo) {
        return networkMapper.add(networkPo);
    }

    @Override
    public int deleteNetworkById(int id) {
        return networkMapper.deleteNetworkById(id);
    }

    @Override
    public int update(NetworkPo networkPo) {
        return networkMapper.update(networkPo);
    }

    @Override
    public List<NetworkPo> selectById(int id) {
        return networkMapper.selectById(id);
    }

    @Override
    public List<NetworkPo> selectAll() {
        return networkMapper.selectAll();
    }

    @Override
    public String getWktById(int id) {
        return networkMapper.getWktById(id);
    }
}
