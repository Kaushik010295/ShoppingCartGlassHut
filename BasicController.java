package com.kaushik.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BasicController {
	
	
	@RequestMapping("/")
	public ModelAndView WelcomeController()
	{
		
		ModelAndView mv=new ModelAndView("index");
	System.out.println("index controller called");
		
		
		return mv;
	}
		
	@RequestMapping("/men")
	public ModelAndView MenController()
	{
		
		ModelAndView mv=new ModelAndView("men");

	System.out.println("men controller called");
		
		
		return mv;
	}
	@RequestMapping("/women")
	public ModelAndView WomenController()
	{
		
		ModelAndView mv=new ModelAndView("women");
	System.out.println("women controller called");
		
		
		return mv;
	}
	
	@RequestMapping("/Child")
	public ModelAndView ChildController()
	{
		
		ModelAndView mv=new ModelAndView("Child");
	System.out.println("Child controller called");
		
		
		return mv;
	}
	@RequestMapping("/acc")
	public ModelAndView AccesoriesController()
	{
		
		ModelAndView mv=new ModelAndView("acc");
	System.out.println("Accesories controller called");
		
		
		return mv;
	}
	

	
	
	@RequestMapping("/product")
	public ModelAndView ProductController()
	{
		
		ModelAndView mv=new ModelAndView("product");
	System.out.println("Product controller called");
		
		
		return mv;
	}
	
	@RequestMapping("/angular1")
	public ModelAndView ViewProductsController()
	{
		
		ModelAndView mv=new ModelAndView("userdisplayproduct");
	System.out.println("Angular controller called");
		
		
		return mv;
	}
	
	
	
	


}
