package com.atk.glasses.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NthkController {

    @RequestMapping(value="/nthk")
    public String getDavidAlg_()throws Exception{
        return "david/al_nth_k";
    }
    
}
