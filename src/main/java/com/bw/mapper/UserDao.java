package com.bw.mapper;

import java.util.List;

import com.bw.entity.User;

/**
 * @author wangafei
 *
 * 2019年11月5日
 */
public interface UserDao {
	
	public User login(User user);
	
	public List<User> selectlist();
	
	public Integer adduser(User user);
	
	public Integer updateuser(User user);
}
