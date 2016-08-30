package com.kaushik.service;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kaushik.dao.ProductDAO;
import com.kaushik.model.Product;

@Service
public class ProductService implements ProductServiceInt {
	
	@Autowired
	ProductDAO productDAO;
	
	//Product product;
	@Autowired
	SessionFactory sessionFactory;
	public ProductService(){}
	
	public ProductService(SessionFactory sf){
		sessionFactory=sf;
	}
	
	public void saveOrUpdate1(Product product)
	{
		System.out.println("Product Service called. ");
		productDAO.saveOrUpdate1(product);	
	}
	public List<Product> list()
	{
		List<Product> list=productDAO.list();
		return list;
	}
	public Product get(int pid)
	{
		return productDAO.get(pid);
	}
	
	public void delete(int pid)
	{
		productDAO.delete(pid);
	}

	public void updateProduct(Product product) {
		productDAO.updateProduct(product);
		
	}

	
	
	
	
	
	
	

}
