package com.atk.glasses.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

    @RequestMapping(value="/test")
	public String helloSpringBoot() {
		System.out.println("파일 테스트111");
		return "hello";
	}
}