package com.Online_Tailoring.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Online_Tailoring.DAO.UserDAO;
import com.Online_Tailoring.Model.Customer;


@Controller
public class Demo_Controller {
	
	@Autowired
	private UserDAO userDao;
	
	@RequestMapping("main")
	public String test() {
		System.out.println("here in servlet");
		return "main";
	}
	
	@RequestMapping("/Register")  
    public String showform(Model m)
    {  
    	m.addAttribute("command", new Customer());
    	return "Register"; 
    }  
	
	@RequestMapping(value="/save",method = RequestMethod.POST)
	public String Registration(@ModelAttribute("user") Customer user) {
		System.out.println("here in Register");
		int count=userDao.registerCustomer(user);
		System.out.println(user.toString());
		if(count>0)
			return "redirect:/main";
		else
			return "redirect:/Register";
		
	}
	
	@RequestMapping("/login")
	public String test12() {
		System.out.println("here in LOgin");
		return "login";
	}
	@RequestMapping("/ApparelCat")
	public String test2() {
		System.out.println("here in Apparel catogery");
		return "ApparelCat";
	}
	@RequestMapping("/ApparelView")
	public String test3() {
		System.out.println("here in Apparel view");
		return "ApparelView";
	}

}
