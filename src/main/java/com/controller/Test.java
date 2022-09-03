package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/test")
public class Test {
    @RequestMapping("/t1")
    @ResponseBody
    public String test(){
        return "test successful";
    }
}
