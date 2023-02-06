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
<style type="text/css">
.img {
	width: 150px;
	height: 150px;
}
.list{
    position: relative;
    float: left;
    width: 250px;
    height: 500px;
    margin-bottom: 10px;
    padding: 0 8px 10px 7px;
    font-size: 12px;
    color: #888;
    border-bottom: 1px solid #eee;
}
</style>
</head>
<body>
	<ul>
		<c:forEach var="shopItem" items="${shopItem}">
			<li class="list">
				<a href="oneItem?itemNo=${shopItem.itemNo}">
					<dl>
						<dt>
							<img src="${shopItem.itemImageFilePath}" class="img"> 
						</dt>
						<dd>
							${shopItem.itemName}
						</dd>
						<dd>
							${shopItem.itemScore}
						</dd>
						<dd>
							${shopItem.itemPrice}
						</dd>
					</dl>
				</a>
			</li>
		</c:forEach>	
	</ul>
</body>
</html>