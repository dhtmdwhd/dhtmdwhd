package com.example.test.login.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.test.login.domain.UserInfoVo;

@Mapper
public interface UserMapper {
	
	public void getUserInfo(UserInfoVo userInfoVo);
	
	UserInfoVo login(@Param("userId") String userId,@Param("userPw") String userPw);
}
