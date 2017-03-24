package com.missionsky.training.dao;

import com.missionsky.training.domain.User;

public interface UserDao {

	/*用户登录*/
	public User login(User user);  
	/*用户注册*/
	public void addUser(User user);
}
