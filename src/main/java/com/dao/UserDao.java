package com.dao;

import com.model.User;

public interface UserDao {

	User findById(int id);
	
	User findBySSO(String sso);
	
}

