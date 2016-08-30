package com.kaushik.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kaushik.model.Category;
import com.kaushik.model.Product;
import com.kaushik.model.Supplier;
import com.kaushik.service.CategoryService;
import com.kaushik.service.ProductService;
import com.kaushik.service.SupplierService;


@Controller
public class ProductController {
	
	 
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private SupplierService supplierService;
	
	
	
	@RequestMapping("/manageproduct")
	public ModelAndView displayHomePage(@ModelAttribute("product")Product product, Model model){
		model.addAttribute("product", new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productService.list());
		model.addAttribute("categoryList", this.categoryService.list());
		model.addAttribute("supplierList", this.supplierService.list());
		System.out.print("\nMyController - displayHomePage as landpage()");
		System.out.println(product.getQuantity());
		ModelAndView mv = new ModelAndView("manageproduct");		
		return mv;
	}
	
	
	
	@RequestMapping(value="/productupdation", method=RequestMethod.POST)
	public String CreateProduct(@ModelAttribute("product")Product product,BindingResult result,HttpServletRequest request)
	{		
		if(result.hasErrors())
		{
			return "manageproduct";
		}
	 	System.out.println("in product controller11");
	 
		@SuppressWarnings("unused")
		String filename;
	 	@SuppressWarnings("unused")
		byte[]bytes;
	 	System.out.println(product.getPdescription());

	 	
	 		System.out.println("image uploaded");
	 		
	
	
	System.out.println("product controller called");
	MultipartFile image=product.getImg();
	Path path;
	path=Paths.get("F:/DT2workspace/sample/src/main/webapp/resources/images/"+product.getPname() +".jpg");
	
	System.out.println("Path = " + path);
    System.out.println("File name = " + product.getImg().getOriginalFilename());
    if(image!=null && !image.isEmpty())
    {
    	try
    	{
    	 image.transferTo(new File(path.toString()));
    	  System.out.println("Image Saved in:"+path.toString());
    	}catch(Exception e)
    	{
    e.printStackTrace();
    		System.out.println("Image not saved");
    	}
  }

    System.out.println( product.getCategory().getCid());
    System.out.println( product.getCategory().getCname());
    Supplier supplier=supplierService.getByName(product.getSupplier().getSname());
	supplierService.saveOrUpdate(supplier);
 	
	product.setSupplier(supplier);
 	
	product.setSup_id(supplier.getSid());
	
	
	Category category=categoryService.getByName(product.getCategory().getCname());
	categoryService.saveOrUpdate(category);
 	
	product.setCategory(category);
 	
	product.setCat_id(category.getCid());
    
    productService.saveOrUpdate1(product);
    
    

    return "displayproduct";

	
	}
	
	
	@RequestMapping("/viewproduct")
	public ModelAndView viewProducts() throws JsonGenerationException, JsonMappingException, IOException
	{
		List<Product> list = productService.list();
		System.out.println("product list="+list);
		ObjectMapper om = new ObjectMapper();
		String listjson = om.writeValueAsString(list);
		System.out.println(listjson);
		return new ModelAndView("product","listofitem",listjson);
		
	
	}
	
	@RequestMapping("deleteproducts")
	public String deleteProduct(@RequestParam int pid) throws Exception {
		System.out.println("In delete");
		System.out.println(pid);

	    try {
	        productService.delete(pid);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return "redirect:/manageproduct";
	}
@RequestMapping("/editProduct")
	public ModelAndView editItem(@RequestParam("pid") int pid)
	{
	Product product=productService.get(pid);
	return new ModelAndView("updateproduct","product",product);
	}
	@RequestMapping(value="/updateProduct", method= RequestMethod.GET)
	public String UpdateProduct(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpServletRequest request)
	{
		if(result.hasErrors())
		{
			return "updateproduct";
		}
		
        productService.saveOrUpdate1(product);
		
		return "redirect:/manageproduct";
	}

	String setName;
	List<Product> plist;
	@SuppressWarnings("unchecked")
	@RequestMapping("/GsonCon")
	public @ResponseBody String getValues()throws Exception
	{
	String result = "";
	plist = productService.list();
	Gson gson = new Gson();
	result = gson.toJson(plist);
	return result;
	}
	
	
	
	@RequestMapping("/product-table")
	public ModelAndView ViewProductsForUser(@RequestParam("pid") String pid) {
	    
	    int prod_id = Integer.parseInt(pid);
	    Product product = productService.get(prod_id);
	    return new ModelAndView("product-table", "product", product);
	}
}


	