package com.chikaho.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        //登录页面放行
//        if (request.getRequestURI().contains("loginCheck")) {
//            return true;
//        }
//        //判断session是否为空
//        if (request.getSession().getAttribute("userLoginInfo") != null) {
//            return true;
//        }
//        request.getRequestDispatcher("/users/loginPage").forward(request, response);
        return true;
    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        System.out.println("Interceptor=>执行事务时");
    }

    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("Interceptor=>执行事务后");
    }
}
