package com.chikaho.service;

import com.chikaho.pojo.Users;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UsersService {

    // 查询用户
    List<Users> queryAllUsers();

    // 根据id查询用户
    Users queryUserById(int user_id);

    // 添加用户
    int addUser(Users users);

    // 根据id修改用户
    int updateUser(Users user);

    // 根据id删除用户
    int deleteUser(int user_id);

    // 检查用户登录
    Users userLoginCheck(@Param("user_name") String user_name, @Param("user_pwd") String user_pwd);

}
