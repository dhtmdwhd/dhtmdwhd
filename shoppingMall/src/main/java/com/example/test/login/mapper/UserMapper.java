package com.example.test.login.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.security.core.userdetails.UserDetails;

import com.example.test.login.domain.UserInfoVo;

@Mapper
public interface UserMapper {
	
	UserDetails getUserInfo(UserInfoVo userInfoVo);
}
