package com.kaushik.dao;

import java.util.List;

import com.kaushik.model.User;

public interface UserDAO {

	public List<User> list();

	public User get(int uid);

	public void saveOrUpdate1(User user);

	public void delete(int uid);
	
	public User getUserByName(String uname);
	
    public boolean isValidCredentials(String user, Boolean isAdmin, String pass);


	
	
	
}
