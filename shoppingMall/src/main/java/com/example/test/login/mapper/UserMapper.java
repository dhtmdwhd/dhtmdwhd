package com.example.test.login.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.test.login.domain.UserInfoVo;


@Mapper
public interface UserMapper {
	
	public void getUserInfo(UserInfoVo userInfoVo);
	
	String findPassword(String userId);
	
	UserInfoVo login(String userId, String userPw);
}