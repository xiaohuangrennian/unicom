package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * 本controller是为了一些整个网页都能用到的东西，且与特定的与相关类相关的controller不同
 * 比如一些返回主页index.jsp， 或者是返回404 not found等通用页面
 */
@Controller
@RequestMapping("/main")
public class MainController {

    @RequestMapping("/t1")
    @ResponseBody
    public String test1(){
        return "ok";
    }

    @RequestMapping("/mainPage")
    public String naimPage(){
        return "mainBody";
    }
}
