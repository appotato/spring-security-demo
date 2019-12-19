package com.hoan.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {

    @GetMapping("/")
    public String showHome(){
        return "home";
    }

    @GetMapping("/leader")
    public String showLeaders(){
        return "leaders";
    }

    @GetMapping("/system")
    public String showSystem(){
        return "systems";
    }
}
