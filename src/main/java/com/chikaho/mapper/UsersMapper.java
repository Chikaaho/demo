package com.chikaho.mapper;

import com.chikaho.pojo.Users;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

public interface UsersMapper {

    // 查询用户
    List<Users> queryAllUsers();

    // 根据id查询用户
    Users queryUserById(@Param("user_id") int user_id);

    // 添加用户
    int addUser(Users users);

    // 根据id修改用户
    int updateUser(Users user);

    // 根据id删除用户
    int deleteUser(@Param("user_id") int user_id);

    // 检查用户登录
    Users userLoginCheck(@PathVariable("user_name") String user_name, @PathVariable("user_pwd") String user_pwd);
    
}
