package com.service;

import com.dao.UserMapper;
import com.pojo.UserPo;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl  implements UserService{
    //service调用dao
    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public int addUser(UserPo userPo) {
        return userMapper.addUser(userPo);
    }

    @Override
    public int deleteUser(int id) {
        return userMapper.deleteUser(id);
    }

    @Override
    public int updateUser(UserPo userPo) {
        return userMapper.updateUser(userPo);
    }

    @Override
    public UserPo selectById(int id) {
        return userMapper.selectById(id);
    }

    @Override
    public List<UserPo> selectAll() {
        return userMapper.selectAll();
    }

    @Override
    public int updateUserAuthority(int id, int authority) {
        return userMapper.updateUserAuthority(id,authority);
    }
}
