<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn"   uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta  name="viewport" charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style type="text/css">
	#fir1{
		width: 100%;
	}
	#sec2{
		width: 80%;
	}
	#banner{
		font-size: 20px;
		font-weight: bold;
	}
	thead tr th, tfoot{
		text-align: center;
		font-size: xx-large;
	}
	tbody{
		font-size: x-large;
	}
	.dd{
		width: 100%;
		height: 100px;
		font-size: x-large;
	}
	.offcanvas{
		text-align: center;
	}
	.progress{
		display: flow-root;
	}
	.btn-success{
		margin-left: 25%;
		width: 150px;
		height: 65px;
	}
</style>
</head>
<body>
	<div id="fir1">
		<div id="sec2">
			<form action="passPost" method="get">
				<table class="table table-info table-striped-columns">
					<thead>
						<tr>
							<th colspan="4">
								${oneProgressNation.requestTitle }
								<input type="hidden" name="postNo" value="${oneProgressNation.postNo }">
							</th>
							
						</tr>
					</thead>
					<tbody>
						<tr>
							<th>작성자</th>
							<td>${oneProgressNation.writer }</td>
							<th>동의기간</th>
							<td>
								<fmt:formatDate value="${oneProgressNation.reportingDate }" pattern="yyyy-MM-dd"/>
								 ~ ${fn:split(oneProgressNation.agreeTerm,' ')[0]}
							</td>
						</tr>
						<tr>
							<th>청원분야</th>
							<td>${oneProgressNation.requestType }</td>
							<th>동의수(${oneProgressNation.agreeCount })</th>
							<td>
								<div class="progress">
								  <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="${oneProgressNation.agreeCount }" aria-valuemin="0" aria-valuemax="100" style="width: ${oneProgressNation.agreeCount }%">
								  </div>
								</div>
							</td>
						</tr>
						<tr>
							<th style="height: 500px; text-align: center; padding-top: 250px;">청원내용</th>
							<td colspan="3">${oneProgressNation.content }</td>
						</tr>
					</tbody>
				</table>
			</form>
				<button onclick="location.href='main'" class="btn btn-success">목록보기</button>
				<c:choose>
					<c:when test="${not empty loginUser.userAuth}">
						<button onclick="location.href='agree?postNo=${oneProgressNation.postNo }'" class="btn btn-success">동의하기</button>
					</c:when>
				</c:choose>
		</div>
	</div>
</body>
</html>