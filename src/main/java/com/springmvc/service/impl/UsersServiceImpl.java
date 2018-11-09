package com.springmvc.service.impl;

import com.springmvc.dao.UsersMapper;
import com.springmvc.entity.Users;
import com.springmvc.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    private UsersMapper mapper;


    public int insertUser(Users users) {
        return mapper.insertUser(users);
    }

    public int deleteUserByUserName(String userName) {
        return mapper.deleteUserByUserName(userName);
    }

    public Users selectUserByUserName(String userName) {
        return mapper.selectUserByUserName(userName);
    }

    public List<Users> selectAllUsers() {
        return mapper.selectAllUsers();
    }
}
