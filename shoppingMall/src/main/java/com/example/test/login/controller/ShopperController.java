package com.example.test.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.test.login.domain.UserInfoVo;
import com.example.test.login.mapper.UserMapper;
import com.example.test.login.service.UserService;

@Controller
public class ShopperController {
	
	@Autowired
	private UserService userService;
	private UserMapper userMapper;
	private PasswordEncoder passwordEncoder;
	
	@GetMapping("/login")
	public String mainPage() {
		return "login";
	}
	
//	@PostMapping("/doLogin") 
//	public 
		
	 
	 @PostMapping("/register")
	 public UserDetails registerAction(UserInfoVo userInfoVo){
		 userService.getUserInfo(userInfoVo);
		 String encodePw = userMapper.getUserInfo(userInfoVo).getPassword();
	 if(passwordEncoder.matches(userInfoVo.getUserPw(),encodePw)) {
		 userInfoVo.setUserPw(encodePw);
		return userMapper.getUserInfo(userInfoVo);
	 }else {
		 return null;
	 } 
	 }
}
