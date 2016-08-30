package com.kaushik.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kaushik.model.Supplier;
import com.kaushik.service.SupplierService;

@Controller
public class SupplierController {

	@Autowired
	private SupplierService supplierService; 
	@Autowired
	Supplier supplier;
	
	
	@RequestMapping("/managesuppliers")
	public ModelAndView Eigthcontroller()
	{
		
		ModelAndView mv=new ModelAndView("managesuppliers");
	System.out.println("Manage suppliers controller called");
		
		
		return mv;
	}
	
	
	@RequestMapping("/suppliermanage")
	public ModelAndView Supplycontroller(
			@RequestParam(value = "sname") String sname,

			@RequestParam(value = "semail") String semail,
			@RequestParam(value = "sphno") String sphno,
			@RequestParam(value = "saddress") String saddress


			)
	
	{
		
		

        supplier.setSname(sname);
        supplier.setSemail(semail);
        supplier.setSphno(sphno);
        supplier.setSaddress(saddress);
		
		supplierService.saveOrUpdate(supplier);

		ModelAndView mv=new ModelAndView("managesuppliers");
	System.out.println("Supplier Manage controller called");
		
		
		return mv;
	}
	
	
	
	
	
	
}
