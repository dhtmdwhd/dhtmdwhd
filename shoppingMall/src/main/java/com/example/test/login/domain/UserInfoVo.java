package com.example.test.login.domain;

import lombok.Data;

@Data
public class UserInfoVo {
	private int userNo;
	private String userId;
	private String userPw;
	private String userName;
	private String userAuth;
	private String userEmail;
	private String userPhone;
	private int addr;
	private String userAddress;
	private String shoppingBasket;
	private String userPayMentOption;
}
