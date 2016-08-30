package com.kaushik.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kaushik.model.Category;
import com.kaushik.service.CategoryService;


@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService; 
	@Autowired
	Category category;
	
	
	@RequestMapping("/editcategories")
	public ModelAndView ManageCategorycontroller()
	{
		
		ModelAndView mv=new ModelAndView("managecategories");
	System.out.println("Manage Categories controller called");
		
		
		return mv;
	}
	@RequestMapping("/categorymanage")
	public ModelAndView Categorycontroller(@ModelAttribute Category category,
			@RequestParam(value = "cname") String cname,
			@RequestParam(value = "cdescription") String cdescription



			)
	
	{
		
		

        category.setCname(cname);
        category.setCdescription(cdescription);
       
		categoryService.saveOrUpdate(category);

		ModelAndView mv=new ModelAndView("managecategories");
	System.out.println("Category Manage controller called");
		
		
		return mv;
	}
	
	
	
	
	
}
