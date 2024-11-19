package com.demo.Dao;

import com.demo.model.User;

public interface UserDao {
	boolean addUser(User user);
	boolean isValidUser(String username, String password);
}
