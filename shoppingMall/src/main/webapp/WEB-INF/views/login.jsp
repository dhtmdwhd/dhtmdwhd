<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	#all{
		
	}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="all">
		<table>
			<tr>
				<th>
					아이디 : 
				</th>
				<td>
					<input type="text" id="userId" class="typing">
				</td>
				<td rowspan="2">
					<input type="button" value="로그인" id="doLogin">
				</td>
			</tr>
			<tr>
				<th>
					비밀번호 : 
				</th>
				<td>
					<input type="password" id="userPw" class="typing">
				</td>
			</tr>
			<tr>
				<td colspan="3">
					<input type="button" value="회원가입" id="newUser">
				</td>
			</tr>
		</table>
	</div>
</body>
</html>