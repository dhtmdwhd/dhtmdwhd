<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"   uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th>청원분야</th>
						<th>청원제목</th>
						<th>동의기간</th>
						<th>동의수</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="progressNationList" items="${progressNationList }">
						<tr onclick="location.href='oneProgressNation?postNo=${progressNationList.postNo}'">
							<td>
								${progressNationList.postNum }
								<input type="hidden" name="postNo" value="${progressNationList.postNo }">
							</td>
							<td>${progressNationList.writer }</td>
							<td>${progressNationList.requestType }</td>
							<td>${progressNationList.requestTitle }</td>
							<td>
								<fmt:formatDate value="${progressNationList.reportingDate }" pattern="yyyy-MM-dd"/>
								 ~ ${fn:split(progressNationList.agreeTerm,' ')[0]}
							</td>
							<td>${progressNationList.agreeCount}</td>
							<td>${progressNationList.view}</td>
						</tr>
		    		</c:forEach>
				</tbody>
			</table>
			<input type="button" value="logout" id="logout">
</body>
</html>