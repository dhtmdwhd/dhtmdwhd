package com.example.test.login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.test.login.domain.UserInfoVo;
import com.example.test.login.service.UserService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ShopperController {
	
	@Autowired
	private UserService userService;
	private final PasswordEncoder passwordEncoder;
	
	@GetMapping("/login")
	public String mainPage() {
		return "login";
	}
	
	@PostMapping("/doLogin") 
	public String login(@ModelAttribute UserInfoVo userInfoVo) {
		String encodedPassword = passwordEncoder.encode(userInfoVo.getUserPw());
		
		if(true == passwordEncoder.matches(encodedPassword, userInfoVo.getUserPw())){
			UserInfoVo loginUser = userService.login(userInfoVo.getUserId(), userInfoVo.getUserPw());
			if(loginUser == null) {
				return "login";
			}
		}
		return "login2";
	
	} 
	
	@RequestMapping("/register")
    public String RegisterPage(){
        return "register";
    }	
	 
	
	 @PostMapping("/registerAction")
	 public String registerAction(UserInfoVo userInfoVo){
		 String encodedPassword = passwordEncoder.encode(userInfoVo.getUserPw());
		 System.out.println("---------------------"+ encodedPassword + "---------------------");
		 userInfoVo.setUserPw(encodedPassword);
		 userService.getUserInfo(userInfoVo);
		 return "login";
	 } 
}
