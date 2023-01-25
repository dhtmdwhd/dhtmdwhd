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
		<form action="doLogin" method="post" id="loginForm">
			<table>
				<tr>
					<th>
						아이디asasasas : 
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
		</form>
	</div>
</body>
<script type="text/javascript">
	$(function(){
		var doLogin = $("#doLogin");
		var loginForm = $("#loginForm");
		var userId = $("#userId");
		var userPw = $("#userPw");
		doLogin.on("click", function(){
			if(userId.val() == '' || userPw.val() == ''){
				alert("빈칸을 채워주세요");
				return false;
			}else{
				loginForm.submit();
			}
		})
	})
</script>
</html>