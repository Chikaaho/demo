package com.chikaho.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //判断session是否为空
        if (request.getSession() == null) {
            //如果没有登录，则去到登录页面
            response.sendRedirect(request.getContextPath() + "/users/login.jsp");
            return false;//验证失败，进行拦截
        }
        //验证通过
        return true;
    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        System.out.println("Interceptor=>执行事务时");
    }

    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("Interceptor=>执行事务后");
    }
}
