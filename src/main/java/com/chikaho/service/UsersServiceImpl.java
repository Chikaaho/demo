package com.chikaho.service;

import com.chikaho.mapper.UsersMapper;
import com.chikaho.pojo.Users;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    private static UsersMapper usersMapper;

    public UsersMapper getUsersMapper() {
        return usersMapper;
    }

    public void setUsersMapper(UsersMapper usersMapper) {
        this.usersMapper = usersMapper;
    }

    public List<Users> queryAllUsers() {
        return usersMapper.queryAllUsers();
    }

    public Users queryUserById(int user_id) {
        return usersMapper.queryUserById(user_id);
    }

    public int addUser(Users users) {
        return usersMapper.addUser(users);
    }

    public int updateUser(Users user) {
        return usersMapper.updateUser(user);
    }

    public int deleteUser(int user_id) {
        return usersMapper.deleteUser(user_id);
    }

    public Users userLoginCheck(@Param("user_name") String user_name, @Param("user_pwd") String user_pwd) {
        return usersMapper.userLoginCheck(user_name, user_pwd);
    }
}
