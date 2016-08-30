package com.kaushik.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kaushik.dao.UserDAO;
import com.kaushik.model.User;

@Service
public class UserService implements UserServiceInt {
	@Autowired
	UserDAO userDAO;
	
	
	public boolean isValidCredentials(String user,Boolean isAdmin,  String pass)
	 {
		System.out.println("glasshut, false, glasshut");
		 return userDAO.isValidCredentials(user,isAdmin, pass);
		 
		 
	 }

	public void saveOrUpdate1(User user)
	{
		System.out.println("In User Service");

		userDAO.saveOrUpdate1(user);	
	}
	public List<User> list()
	{
		List<User> list=userDAO.list();
		return list;
	}
	public User get(int uid)
	{
		return userDAO.get(uid);
	}
	public User getUserByName(String uname)
	{
		return userDAO.getUserByName(uname);
	}
	public void delete(int uid)
	{
		userDAO.delete(uid);
	}


}
