package com.atk.glasses.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DavidController {

    @RequestMapping(value="/david")
    public String getDavidAlg()throws Exception{
        return "david/algorithm_mocktest";
    }

}