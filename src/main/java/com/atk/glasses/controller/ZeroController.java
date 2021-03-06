package com.atk.glasses.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ZeroController {
    
    @RequestMapping(value="/alg1")
    public String getZeroAlg()throws Exception{
        return "zero/alg1";
    }

    @RequestMapping(value="/alg2")
    public String getZeroAlg_2()throws Exception{
        return "zero/alg2";
    }

    @RequestMapping(value="/alg3")
    public String getZeroAlg_3()throws Exception{
        return "zero/alg3";
    }

    @RequestMapping(value="/alg4")
    public String getZeroAlg_4()throws Exception{
        return "zero/alg4";
    }

    @RequestMapping(value="/d3_1")
    public String getZeroD3_1()throws Exception{
        return "zero/d3/d31";
    }

}
