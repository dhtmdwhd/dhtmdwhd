package com.example.test.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@GetMapping("/login")
	public String mainPage() {
		return "login";
	}
	
	@RequestMapping("/doLogin") 
	public String login(@ModelAttribute UserInfoVo userInfoVo, HttpSession session, Model model) {
		String encodedPassword = userInfoVo.getUserPw(); 
		String dbData = userService.findPassword(userInfoVo.getUserId()); 
		
		System.out.println("encodedPassword" + encodedPassword);
		System.out.println("dbData" + dbData);
		
		
		UserInfoVo loginUser = userService.login(userInfoVo.getUserId(), userInfoVo.getUserPw());
		
		int cnt = 0;
		
		if(passwordEncoder.matches(encodedPassword, dbData)){
			System.out.println("-----------------");
			cnt = 1;
			System.out.println("cnt 1이 통과해야함" + cnt);
		}else {
			cnt = 0;
			System.out.println("-+++++++++++++++++++++++++++++-");
			System.out.println("cnt 0이 통과해야함" + cnt);
		}
		
		if(cnt == 1) {
			session.setAttribute("loginUser", loginUser);
			session.setMaxInactiveInterval(3600);
			model.addAttribute("progressNationList",userService.progressNation());
			return "main";
		}else {
			session.setAttribute("loginUser", null);
			return "login2";
		}
	} 
	
	@GetMapping("oneProgressNation")
    public String oneProgressNation(Model model, int postNo) {
    	model.addAttribute("oneProgressNation",userService.oneNationPost(postNo));
    	return "sub";
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
