package com.bw.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bw.entity.User;
import com.bw.mapper.UserDao;

/**
 * @author wangafei
 *
 * 2019年11月5日
 */
@Service
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserDao dao;
	
	public User login(User user) {
		// TODO Auto-generated method stub
		return dao.login(user);
	}

	public List<User> selectlist() {
		// TODO Auto-generated method stub
		return dao.selectlist();
	}

	public Integer adduser(User user) {
		// TODO Auto-generated method stub
		return dao.adduser(user);
	}

	public Integer updateuser(User user) {
		// TODO Auto-generated method stub
		return dao.updateuser(user);
	}

}
