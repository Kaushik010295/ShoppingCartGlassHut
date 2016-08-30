package com.kaushik.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kaushik.dao.CategoryDAO;
import com.kaushik.model.Category;


@Service
public class CategoryService implements CategoryServiceInt {

	@Autowired
	CategoryDAO categoryDAO;
	
	public void saveOrUpdate(Category category)
	{
		categoryDAO.saveOrUpdate(category);	
	}
	public List<Category> list()
	{
		List<Category> list=categoryDAO.list();
		return list;
	}
	public Category get(int cid)
	{
		return categoryDAO.get(cid);
	}
	
	public void delete(int cid)
	{
		categoryDAO.delete(cid);
	}
	public Category getByName(String catname) {

		return categoryDAO.getByName(catname);
	}
	
	
	
	
}
