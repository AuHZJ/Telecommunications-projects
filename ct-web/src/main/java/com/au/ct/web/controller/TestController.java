package com.au.ct.web.controller;

import com.au.ct.web.bean.CallLog;
import com.au.ct.web.service.CallLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @ClassName TestController
 * TODO
 * @Author Au
 * @Date 2019/7/22 20:47
 * @Description
 **/
@Controller
public class TestController {
    @Autowired
    private CallLogService service;

    @RequestMapping("/test")
    public String test() {
        System.out.println("hello");
        return "aaa";
    }

    @RequestMapping("/query")
    public String queryData(String tel, String calltime, Model model) {
        // 查询统计结果：MySQL
        List<CallLog> calllogs = service.queryMonthDatas(tel, calltime);
        model.addAttribute("calllogs", calllogs);
        return "query";
    }
}
