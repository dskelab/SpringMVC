package com.springmvc.service;

import com.springmvc.entity.Users;

import java.util.List;

/**
 * 用户处理service
 */
public interface UsersService {
    /*添加用户*/
    int insertUser(Users users);
    /*通过用户名删除用户*/
    int deleteUserByUserName(String userName);
    /*通过用户名查询用户*/
    Users selectUserByUserName(String userName);
    /*查询所有用户*/
    List<Users> selectAllUsers();
}
