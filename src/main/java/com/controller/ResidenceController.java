package com.controller;

import com.pojo.ResidencePo;
import com.service.ResidenceService;
import com.service.ResidenceServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/residence")
public class ResidenceController {
    //调用service
    @Autowired
    @Qualifier("residenceServiceImpl")
    private ResidenceService residenceService ;

    @RequestMapping("addResidence")
    public String addResidence(){
        return "drapPolygon";
    }

    @RequestMapping("/selectAll")
    public String selectAll(Model model){

        List<ResidencePo> list = residenceService.selectAll();
        model.addAttribute("residences",list);
        return "allResidence";
    }



}
