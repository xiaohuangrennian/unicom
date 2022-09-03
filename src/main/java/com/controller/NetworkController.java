package com.controller;

import com.pojo.NetworkPo;
import com.service.NetworkPoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

@Controller
@RequestMapping("/network")
public class NetworkController {

    @Autowired
    @Qualifier("networkServiceImpl")
    private NetworkPoService networkPoService;

    @RequestMapping("/t1")
    @ResponseBody
    public String test1(){
        return "networkController ok";
    }

    @RequestMapping("/selectAll")
    public String selectAll(Model model){
        List<NetworkPo> list = networkPoService.selectAll();
        model.addAttribute("networks",list);
        return "allNetwork";
    }

    @RequestMapping(value = "/selectById",method = RequestMethod.GET)
    public String selectById(int id,Model model){
        System.out.println("request ok");
        List<NetworkPo> list = networkPoService.selectById(id);
        model.addAttribute("networks",list);
        return "allNetwork";
    }

    @RequestMapping("/firstpage")
    public String returnFirstPage(HttpSession session){
        session.invalidate();
        return "redirect:/index.jsp";

    }
    //去到增加一个节点
    @RequestMapping("/toAdd")
    public String toAdd(int id,int year,String wkt){
        System.out.println(String.format("%d建立于%d,坐标为:%s", id,year,wkt));
        return "getNetworkPoint";
    }

    @RequestMapping("/showGraph")
    public String showGraph(){
        return "showGraph";
    }

    @RequestMapping("/getNetwork")
    public String getNetworkPoint(){
        return "getNetworkPoint";
    }

//    @RequestMapping("/addResidence")
//    public String addResidence(Model model){
//        List<Double[]> points = new ArrayList<>();
//        points.add(new Double[]{108.231413,34.563421});
//        points.add(new Double[]{108.131413,34.573421});
//        points.add(new Double[]{108.231713,34.563921});
//        model.addAttribute("points",points);
//        return "addResidence";
//    }

    @RequestMapping("/polygon")
    public String polygon(){
        return "polygon";
    }






}
