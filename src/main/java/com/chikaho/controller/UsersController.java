package com.chikaho.controller;

import com.chikaho.pojo.Users;
import com.chikaho.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/users")
public class UsersController {

    @Autowired
    @Qualifier("UsersServiceImpl")
    private UsersService usersService;

    @RequestMapping("/loginPage")
    public String loginPage() { return "users/login"; }

    // 查询全部用户信息
    @RequestMapping("/queryAllUser")
    public String list(Model model) {
        List<Users> usersList = usersService.queryAllUsers();
        model.addAttribute("userList", usersList);
        return "users/allUsers";
    }

    // 根据ID查询用户
    @RequestMapping("/queryUserById")
    public String queryUserById(int user_id, Model model) {
        Users users = usersService.queryUserById(user_id);
        model.addAttribute("users", users);
        return "users/userCheck";
    }

    // 检查登录信息
    @RequestMapping("/loginCheck")
    public String loginCheck(
            @RequestParam("user_name") String user_name, @RequestParam("user_pwd") String user_pwd, Model model) {
        Users loginCheck = usersService.userLoginCheck(user_name, user_pwd);
        if (loginCheck == null) {
            model.addAttribute("NAME_OR_PWD_ERROR","账户名或密码输入错误,请检查后重新输入!");
            return "users/login";
        } else { return "books/toBooks"; }
    }

    // 修改用户信息页面
    @RequestMapping("/updatePage")
    public String toUpdatePage(int id, Model model) {
        Users users = usersService.queryUserById(id);
        model.addAttribute("users", users);
        return "users/updateUserPage";
    }

    // 修改用户信息
    @RequestMapping("/updateUser")
    public String updateUser(Users users) {
        System.out.println("users=>" + users);
        usersService.updateUser(users);
        return "users/allUsers";
    }

    // 删除用户
    @RequestMapping("/deleteUser/{user_id}")
    public String deleteUser(@PathVariable int user_id) {
        usersService.deleteUser(user_id);
        return "users/allUsers";
    }

    // 注册新用户页面
    @RequestMapping("/addUserPage")
    public String toAddUserPage() {
        return "users/addUserPage";
    }

    // 注册(添加)新用户
    @RequestMapping("/addUser")
    public String registUser(Users users) {
        System.out.println("addUser=>" + users);
        usersService.addUser(users);
        return "redirect:users/login";
    }

}
