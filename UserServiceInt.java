package com.kaushik.service;

import java.util.List;

import com.kaushik.model.User;

public interface UserServiceInt {
	
	public List<User> list();

	public User get(int uid);

	public void saveOrUpdate1(User user);

	public void delete(int uid);
	
	public User getUserByName(String uname);
	
	

}
