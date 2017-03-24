package com.missionsky.training.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.missionsky.training.dao.UserDao;
import com.missionsky.training.domain.User;

@Controller
public class UserController {
	
	@Autowired
	private UserDao userDao;
	
	//定向到登录页面
	@RequestMapping("/index")
	public String to_login()
	{
		return "login";
	}
	
	
    //验证登录
	@RequestMapping("/login")
	public String login(@RequestParam(value=("userName"),required=false,defaultValue="")String userName,@RequestParam(value=("password"),required=false,defaultValue="")String password,HttpServletRequest request)
	{
		if(userName.equals("")&&password.equals(""))
		{
			User user_session=(User) request.getSession().getAttribute("user");
			if(user_session==null)
				return "login";
			else
				return "index";
		}else
		{
		User user=new User();
		user.setUserName(userName);
		user.setPassword(password);
		User u=userDao.login(user);
		if(u!=null)
		{
	    request.getSession().setAttribute("user", u);
		return "index";
		}
		else
		return "login";
		}
	}
	
	//用户注册
	@RequestMapping("/register")
	@Transactional
	public String register(@RequestParam("userName")String userName,@RequestParam("password")String password)
	{
		User user=new User();
		user.setUserName(userName);
		user.setPassword(password);
		userDao.addUser(user);
		return "register";
	}
	
	//退出登录
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request)
	{
		//销毁session
		request.getSession().invalidate();
		return "login";
	}
}
