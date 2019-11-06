package com.bw.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bw.entity.User;
import com.bw.service.UserService;

/**
 * @author wangafei
 *
 * 2019年11月5日
 */
@Controller
public class UserController {
	
	@Resource
	private UserService service;
	
	@RequestMapping("/login")
	@ResponseBody
	public User login(User user,HttpSession session){
		User user2 = service.login(user);
		session.setAttribute("user", user2);
		
		return user;
	}
	
	@RequestMapping("/list")
	public ModelAndView list(){
		ModelAndView mav = new ModelAndView();
		List<User> list = service.selectlist();
		
		mav.setViewName("list");
		mav.getModel().put("list", list);
		
		return mav;
	}
	@RequestMapping("/resoue")
	@ResponseBody
	public Integer resoue(User user){
		 Integer integer = service.adduser(user);
		 
		 return integer;
	}
	@RequestMapping("/update")
	@ResponseBody
	public Integer update(User user){
		Integer integer = service.updateuser(user);
		return integer;
	}
}
