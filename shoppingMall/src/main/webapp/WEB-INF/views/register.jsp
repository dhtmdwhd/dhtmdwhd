<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function moveRegister(f){
		if(f.userId.value == "" || f.userPw.value == "" || f.userName.value == "" || f.userPhone.value == "" || f.userEmail.value == "" ){
			alert("빈칸을 채워주세요");
			return false;
		}else{
			f.submit();
			return true;
		}
		
	}
</script>
<body>
	<form action="registerAction" method="post">
		<table>
			<tr>
				<th colspan="3">
					<h1>회뤈가입</h1>
				</th>
			</tr>
			<tr>
				<th>아이디</th>
				<td colspan="2">
					<input type="text" id="userId" name="userId">
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td colspan="2">
					<input type="password" id="userPw" name="userPw">
				</td>
			</tr>
			<tr>
				<th>이름</th>
				<td colspan="2">
					<input type="text" id="userName" name="userName">
				</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td colspan="2">
					<input type="text" id="userPhone" name="userPhone">
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td colspan="2">
					<input type="email" id="userEmail" name="userEmail">
				</td>
			</tr>
			<tr>
				
				<td colspan="3">
					<input type="button" id="register" value="회원가입" onclick="moveRegister(this.form)">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>