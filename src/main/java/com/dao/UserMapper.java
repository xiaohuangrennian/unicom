package com.dao;

import com.pojo.UserPo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    //增加一个用户
    public int addUser(UserPo userPo);

    ///删除一个用户
    public int deleteUser(int id);

    //更新用户,仅能跟新密码和用户名
    public int updateUser(UserPo userPo);

    //桶过ID查询一个用户
    public UserPo selectById(int id);

    //查询所有
    public List<UserPo> selectAll();

    //更改一个用户的权限，这必须是超级管理者才可以做到
    public int updateUserAuthority(int id,int authority);
}
