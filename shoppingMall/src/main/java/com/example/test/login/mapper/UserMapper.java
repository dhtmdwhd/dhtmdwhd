package com.example.test.login.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.test.login.domain.UserInfoVo;
import com.example.test.login.domain.WritingVo;
import com.example.test.login.domain.shopItemVo;


@Mapper
public interface UserMapper {
	
	public void getUserInfo(UserInfoVo userInfoVo) ;
	
	String findPassword(String userId);
	
	UserInfoVo login(String userId);
	
	public List<WritingVo> progressNation();
	
	public WritingVo oneNationPost(int postNo);

	public String procView(@Param("postNo")int postNo,@Param("viewerNo") int viewerNo);

	public List<shopItemVo> shopItem();

	public shopItemVo oneShopItem(int itemNo);

	public shopItemVo dibItem(@Param("itemNo")int itemNo,@Param("userNo")int userNo);
	
	public int dibOn(@Param("itemNo")int itemNo,@Param("userNo")int userNo);
	
	public int dibOff(@Param("itemNo")int itemNo,@Param("userNo")int userNo);
}