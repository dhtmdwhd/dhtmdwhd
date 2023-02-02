package com.example.test.login.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.test.login.domain.UserInfoVo;
import com.example.test.login.domain.WritingVo;


@Mapper
public interface UserMapper {
	
	public void getUserInfo(UserInfoVo userInfoVo) ;
	
	String findPassword(String userId);
	
	UserInfoVo login(String userId);
	
	public List<WritingVo> progressNation();
	
	public WritingVo oneNationPost(int postNo);

	public String procView(@Param("postNo")int postNo,@Param("viewerNo") int viewerNo);
}