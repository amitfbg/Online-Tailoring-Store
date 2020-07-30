package com.Online_Tailoring.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Online_Tailoring.DAO.Cart_ApparelDAO;
import com.Online_Tailoring.DAO.Order_Details_DAO;
import com.Online_Tailoring.DAO.UserDAO;
import com.Online_Tailoring.Model.Cart_Apparel;
import com.Online_Tailoring.Model.Customer;

@Controller
public class Demo_Controller {

	@Autowired
	private UserDAO userDao;

	@Autowired
	private Cart_ApparelDAO cartapparelDao;
	
	@Autowired
	private Order_Details_DAO odao;

	@RequestMapping("main")
	public String test() {
		System.out.println("here in servlet");
		return "main";
	}

	@RequestMapping("/Register")
	public String showform(Model m) {
		m.addAttribute("command", new Customer());
		return "Register";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String Registration(@ModelAttribute("user") Customer user) {
		System.out.println("here in Register");
		int count = userDao.registerCustomer(user);
		System.out.println(user.toString());
		if (count > 0)
			return "redirect:/main";
		else
			return "redirect:/Register";

	}
	
	@RequestMapping(value="/login" ,method = RequestMethod.GET)
	public String LoginPage() {
		return "login";
	}

	@RequestMapping(value = "/login" ,method = RequestMethod.POST )
	public ModelAndView Login(@RequestParam(required = false, name = "UserId") String email,
			@RequestParam(required = false, name = "Password") String password,HttpSession ses,HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();	
		Customer user = new Customer();
		user.setUserId(email);
		user.setPassword(password);
		System.out.println(user.toString());
		String name = userDao.loginUser(user);
		System.out.println(name);
		if (email == null || password == null) {
			mv.setViewName("login");
		} else if (name != null) {
			ses=request.getSession();
			ses.setAttribute("user",user);
			mv.setViewName("redirect:/ApparelView");
		} else {
			mv.addObject("ms", "Invalid user id or password...");
			mv.setViewName("login");
		}
		return mv;

	}

	@RequestMapping(value = "/SaveToCart", method = RequestMethod.POST)
	public String test2(@ModelAttribute("cartitems") Cart_Apparel cartitems, Model m, HttpSession ses) {
		System.out.println("here in Save to cart catogery");
		cartitems.setApparelId();
		cartitems.setPrice();
		System.out.println(cartitems.toString());
		ses.setAttribute("cartitems", cartitems);
		List<Cart_Apparel> cartApp = cartapparelDao.addtocart(cartitems);
		System.out.println(cartApp);
		m.addAttribute("cartlist", cartApp);
		ses.setAttribute("cartlist", cartApp);

		return "redirect:/Cart";
	}

	@RequestMapping("/Cart")
	public String showCart(Model m, HttpSession ses) {
		m.getAttribute("cartlist");
		ses.getAttribute("cartlist");
		return "Cart";
	}
	
	@RequestMapping(value="/success")
	public String AddCart(Model m, HttpSession ses) {
		Customer c=(Customer) ses.getAttribute("user");
		System.out.println(c.toString());
		Cart_Apparel citems=(Cart_Apparel) ses.getAttribute("cartitems");
		System.out.println(citems.toString());		
		cartapparelDao.registerCustomer(citems,c);
		ses.removeAttribute("cartitems");
		return "success";
	}

	@RequestMapping("/ApparelView")
	public String ApparelView(HttpSession ses,HttpServletRequest request) {
		System.out.println("here in Apparel view");
		ses=request.getSession(false);
		if(ses == null)
		{
			System.out.println(ses);
			System.out.println("here session not start");
			//return "ApparelView";
			return "login";
		}
		else
		{
			System.out.println("here session start");
			//return "login";
			return "ApparelView";
		}
	}

	@RequestMapping("/logout")
		public String Logout(HttpSession ses)
		{
			ses.removeAttribute("cartitems");
			ses.removeAttribute("user");
			ses.invalidate();
			System.out.println("logout");
			return "main";
		}
	
	@RequestMapping("/orders")
	public String getOrder(HttpSession ses,Model m) {
		Customer c=(Customer) ses.getAttribute("user");
		List<Cart_Apparel> list=odao.getApparel(c);
		m.addAttribute("list",list);
		System.out.println(list);
		return "order";
	}
	

}
