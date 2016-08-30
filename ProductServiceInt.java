package com.kaushik.service;

import java.util.List;

import com.kaushik.model.Product;

public interface ProductServiceInt {
	public void saveOrUpdate1(Product product);
	public List<Product> list();
	public Product get(int pid);
	public void delete(int pid);
	public void updateProduct(Product product);

	
}
