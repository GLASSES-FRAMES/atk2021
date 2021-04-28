package com.atk.glasses.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TenController {
    
    @RequestMapping(value="/alg_20210428")
    public String getZeroAlg()throws Exception{
        return "ten/alg_20210428";
    }

}
