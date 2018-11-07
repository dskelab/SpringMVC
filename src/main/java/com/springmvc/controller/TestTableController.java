package com.springmvc.controller;

import com.springmvc.entity.TestTable;
import com.springmvc.service.TestTableService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

@Controller
public class TestTableController {
    @Autowired
    private TestTableService testTableService;

    //url为根目录   映射到views/login.jsp 页面
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String login(HttpServletRequest request,Model model) {
        ArrayList<TestTable> list = (ArrayList<TestTable>) testTableService.queryAll();
        for(TestTable testTable : list) {
            model.addAttribute("testTable", testTable);
            model.addAttribute("test", "this is a test");
            System.out.println(testTable);
        }
        return "login";
    }

    /**
     * 登陆判定
     * @param name
     * @param password
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/isValid", method = RequestMethod.POST)
    public String isValid(@RequestParam("name")String name, @RequestParam("pass")String password){
        if("test".equals(name)&&"test".equals(password)){
            System.out.println("name : "+name);
            System.out.println("password : "+password);
            return "1";
        }
        return "0";
    }

    //url为根目录   映射到views/index.jsp 页面
    @RequestMapping(value = "/index", method = RequestMethod.POST)
    public String index(HttpServletRequest request,Model model) {
        System.out.println("进入首页面!");
        return "index";
    }
}
