package com.kaushik.dao;

import java.util.List;

import com.kaushik.model.Product;


public interface ProductDAO {
	
	public List<Product> list();

	public Product get(int pid);

	public void saveOrUpdate1(Product product);

	public void delete(int pid);
	public void updateProduct(Product product);
	

}
