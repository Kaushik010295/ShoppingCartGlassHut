package com.kaushik.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kaushik.model.User;
import com.kaushik.service.UserService;

@Controller
public class HomeController {
	
	
	
	
	@Autowired
	UserService us;
		
	@RequestMapping("/registration")
	public ModelAndView displayReg(){
		ModelAndView r1=new ModelAndView("signup1","user",new User());
		System.out.println("reg page is from logicontroller");
		return r1;
	}
	

	@RequestMapping("/login")
	public ModelAndView Logincontroller(Principal principal)
	{
		ModelAndView mv= new ModelAndView("login");
		
		System.out.println("Registration control called");
		
		
		return mv;
	}
	@RequestMapping(value="/signupcontroller",method=RequestMethod.POST)
	public ModelAndView register(@Valid@ModelAttribute("user") User user,BindingResult bindingResult)
    {	
		if(bindingResult.hasErrors())
		{
			System.out.println("If in register controller");
			return new ModelAndView("signup1");
		}
		System.out.println(" register controller");
		us.saveOrUpdate1(user);
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}
	
	@RequestMapping("/CheckUser")
	public ModelAndView usercheck(Principal principal){
		System.out.println("it is of usercheck");
		ModelAndView mv = new ModelAndView("userlogin");
		String name = principal.getName();
		mv.addObject("name", "Hi " + name + " welcome to Glass-hut!");
		return mv;
	}
	@RequestMapping("/CheckAdmin")
	public ModelAndView admincheck(){
		System.out.println("it is of admincheck");
		return new ModelAndView("adminlogin");
	}
	
	@RequestMapping("/adminlogin")
	public ModelAndView adminlogin(){
		System.out.println("it is of admincheck");
		return new ModelAndView("adminlogin");
	}

	

	@RequestMapping("/logout")

	
	public ModelAndView logout(HttpServletRequest request)
	{
	request.getSession().invalidate();
	System.out.println("logout page called");
	ModelAndView mv = new ModelAndView("login");
	mv.addObject("message", "You Have Successfully Logged out <br> Enter your credentials to log in again.");

	    return  mv;	    
	}
}
