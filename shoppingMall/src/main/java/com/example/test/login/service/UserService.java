package com.example.test.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.test.login.domain.UserInfoVo;
import com.example.test.login.mapper.UserMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService{
	@Autowired
	private UserMapper userMapper;
	
	public String getUserInfo(UserInfoVo userInfoVo){
    	userMapper.getUserInfo(userInfoVo);
		return null;
	}
	public UserInfoVo login(String userId, String userPw){
		return userMapper.login(userId, userPw);
    }
	public String findPassword(String userId){
		return userMapper.findPassword(userId);
	}
}