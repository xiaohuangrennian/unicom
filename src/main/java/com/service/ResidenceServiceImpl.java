package com.service;

import com.dao.ResidenceMapper;
import com.pojo.NetworkPo;
import com.pojo.ResidencePo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResidenceServiceImpl implements ResidenceService{
    //service调用dao层的mapper接口
    private ResidenceMapper residenceMapper;

    public void setResidenceMapper(ResidenceMapper residenceMapper) {
        this.residenceMapper = residenceMapper;
    }

    @Override
    public int add(ResidencePo residencePo) {
        return residenceMapper.add(residencePo);
    }

    @Override
    public int deleteResidence(ResidencePo residencePo) {
        return residenceMapper.deleteResidence(residencePo);
    }

    @Override
    public int update(ResidencePo residencePo) {
        return residenceMapper.update(residencePo);
    }

    @Override
    public List<ResidencePo> select(String city, String region, String street, String name) {
        return residenceMapper.select(city, region, street, name);
    }

    @Override
    public List<ResidencePo> selectAll() {
        return residenceMapper.selectAll();
    }

    @Override
    public String[] getWktById(String city, String region, String street, String name) {
        return residenceMapper.getWktById(city, region, street, name);
    }
}
