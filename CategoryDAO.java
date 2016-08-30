package com.kaushik.dao;

import java.util.List;

import com.kaushik.model.Category;

public interface CategoryDAO {

	

	public List<Category> list();

	public Category get(int cid);

	public void saveOrUpdate(Category category);

	public void delete(int cid);
	public Category getByName(String catname) ;

	
}
