package com.atk.glasses.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AlgController {
    
    @RequestMapping(value="/alg1")
    public String getZeroAlg()throws Exception{
        return "zero/alg1";
    }
}
