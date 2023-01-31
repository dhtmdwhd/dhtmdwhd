package com.example.test.login.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.test.login.domain.UserInfoVo;
import com.example.test.login.domain.WritingVo;


@Mapper
public interface UserMapper {
	
	public void getUserInfo(UserInfoVo userInfoVo) ;
	
	String findPassword(String userId);
	
	UserInfoVo login(String userId, String userPw);
	
	public List<WritingVo> progressNation();
	
	public WritingVo oneNationPost(int postNo);
}