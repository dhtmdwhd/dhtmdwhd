package com.example.test.login.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class WritingVo {
	private int postNo;
	private String writer;
	private String requestType;
	private String requestTitle;
	private String content;
	private int agreeCount;
	private int view;
	private String decide;
	private String agreeTerm;
	private String original_file_name;
	private String file_path;
	private Date reportingDate;
	private Date decideDate;
	private String reason;
	
	private int postNum;
}
