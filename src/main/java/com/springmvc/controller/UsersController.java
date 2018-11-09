package com.springmvc.controller;

import com.springmvc.entity.Users;
import com.springmvc.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.sql.Timestamp;
import java.util.ArrayList;

@Controller
public class UsersController {

    @Autowired
    private UsersService usersService;

    //url为根目录   映射到views/login.jsp 页面
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String login(HttpServletRequest request, Model model) {
        ArrayList<Users> users = (ArrayList<Users>) usersService.selectAllUsers();
        for (Users user : users) {
            System.out.println(user.toString());
        }
        return "login";
    }

    /**
     * 登陆判定
     *
     * @param name
     * @param password
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/isValid", method = RequestMethod.POST)
    public String isValid(@RequestParam("name") String name, @RequestParam("pass") String password) {
        //有空值的直接返回0
        if (name.isEmpty() || password.isEmpty()) return "0";

        Users user = usersService.selectUserByUserName(name);
        if (user == null) return "0";

        if (password.equals(user.getPassWord())) {
            return "1";
        }
        return "0";
    }

    //url为根目录   映射到views/index.jsp 页面
    @RequestMapping(value = "/index", method = RequestMethod.POST)
    public String index(HttpServletRequest request, Model model) {
        System.out.println("进入首页面!");
        return "index";
    }

    /**
     * 注册
     *
     * @param name
     * @param password
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@RequestParam("name") String name, @RequestParam("pass") String password) {
        //有空值的直接返回0
        if (name.isEmpty() || password.isEmpty()) return "0";
        Users user = new Users();
        user.setUserName(name);
        user.setPassWord(password);
        //随机生成注册地为北京或河北
        user.setRegisterLocation(((int) (Math.random()*100+1)) % 2 == 0 ? "北京" : "河北");
        user.setRegisterTime(new Timestamp(System.currentTimeMillis()));

        int valid = usersService.insertUser(user);

        return valid == 0 ? "0" : "1";
    }
}
