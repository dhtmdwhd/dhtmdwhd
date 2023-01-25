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
	UserMapper userMapper;
	
    public void getUserInfo(UserInfoVo userInfoVo){
    	userMapper.getUserInfo(userInfoVo);
}
}