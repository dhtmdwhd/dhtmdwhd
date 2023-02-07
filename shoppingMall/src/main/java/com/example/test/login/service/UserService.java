package com.example.test.login.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.test.login.domain.UserInfoVo;
import com.example.test.login.domain.WritingVo;
import com.example.test.login.domain.shopItemVo;
import com.example.test.login.mapper.UserMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService{
	@Autowired
	private UserMapper userMapper;
	
	public String getUserInfo(UserInfoVo userInfoVo) {
    	userMapper.getUserInfo(userInfoVo);
		return null;
	}
	public UserInfoVo login(String userId){
		return userMapper.login(userId);
    }
	public String findPassword(String userId){
		return userMapper.findPassword(userId);
	}
	
	public List<WritingVo> progressNation() {
		return userMapper.progressNation();
	}
	
	public WritingVo oneNationPost(int postNo) {
		return userMapper.oneNationPost(postNo);
	}

	public String procView(int postNo, int viewerNo) {
		return userMapper.procView(postNo,viewerNo);
	}

	public List<shopItemVo> shopItem() {
		return userMapper.shopItem();
	}
	
	public shopItemVo oneShopItem(int itemNo) {
		return userMapper.oneShopItem(itemNo);
	}
}