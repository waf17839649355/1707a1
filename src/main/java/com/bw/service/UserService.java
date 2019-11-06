package com.bw.service;

import java.util.List;

import com.bw.entity.User;

/**
 * @author wangafei
 *
 * 2019年11月5日
 */
public interface UserService {
	
	public User login(User user);

	public List<User> selectlist();

	public Integer adduser(User user);

	public Integer updateuser(User user);
}
