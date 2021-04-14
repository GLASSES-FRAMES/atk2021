package com.atk.glasses.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AlgController {
    
    @RequestMapping(value="/alg1")
    public String getZeroAlg()throws Exception{
        return "zero/alg1";
    }

    @RequestMapping(value="/alg2")
    public String getZeroAlg_2()throws Exception{
        return "zero/alg2";
    }

    @RequestMapping(value="/david")
    public String getDavidAlg()throws Exception{
        return "david/algorithm";
    }
}
