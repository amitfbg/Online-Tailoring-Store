package com.Online_Tailoring.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Demo_Controller {
	@RequestMapping("main")
	public String test() {
		System.out.println("here in servlet");
		return "main";
	}
	
	@RequestMapping("/Register")
	public String test1() {
		System.out.println("here in Register");
		return "Register";
	}
	
	@RequestMapping("/login")
	public String test12() {
		System.out.println("here in LOgin");
		return "login";
	}

}
