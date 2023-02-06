package com.example.test.login.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class shopItemVo {
	private int itemNo;
	private String itemName;
	private String itemKind;
	private int itemScore;
	private int itemPrice;
	private String itemExplanation;
	private String itemImageFilePath;
	private Date registrationDate; 

}
