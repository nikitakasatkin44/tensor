package com.service;

import com.model.User;

public interface UserService {

	User findById(int id);
	
	User findBySso(String sso);
	
}