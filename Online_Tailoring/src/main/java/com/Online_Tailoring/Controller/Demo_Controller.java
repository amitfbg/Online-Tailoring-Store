package com.Online_Tailoring.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Online_Tailoring.DAO.ApparelDAO;
import com.Online_Tailoring.DAO.UserDAO;
import com.Online_Tailoring.Model.Apparel;
import com.Online_Tailoring.Model.Customer;


@Controller
public class Demo_Controller {
	
	@Autowired
	private UserDAO userDao;
	
	@Autowired
	private ApparelDAO apparelDao;
	
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
	public String ApparelView(Model m) {
		System.out.println("here in Apparel view");
		List<Apparel> list = apparelDao.getApparel();
		m.addAttribute("list",list);
		System.out.println(list);
		return "ApparelView";
	}

}
