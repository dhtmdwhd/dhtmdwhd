<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.button{
		width: 150px;
		height: 50px;
		font-size: large;
		align-content: center; 
	}
</style>
</head>
<body>
	<form action="passPost" method="get">
		<table class="table table-info table-striped-columns">
			<thead>	
				<tr>
					<td colspan="2">
						<img src="${oneShopItem.itemImageFilePath}" class="img"> 
					</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>
						이름 :
					</th>
					<td>
						${oneShopItem.itemName}
					</td>
				</tr>
				<tr>
					<th>
						상품종류 :
					</th>
					<td>
						${oneShopItem.itemKind}
					</td>
				</tr>
				<tr>
					<th>
						별점 :
					</th>
					<td>
						${oneShopItem.itemScore}
					</td>
				</tr>
				<tr>
					<th>
						가격 :
					</th>
					<td>
						${oneShopItem.itemPrice}
					</td>
				</tr>
				<tr>
					<th>
						상품설명 :
					</th>
					<td>
						${oneShopItem.itemExplanation}
					</td>
				</tr>
				<tr>
					<c:if test="${empty dibItem}">
						<td>
							<input type="button" class="button" value="찜♡"onclick="location.href='dibsOn'">
						</td>
					</c:if>
					<c:if test="${not empty dibItem}">
						<td>
							<input type="button" class="button" value="찜❤️"onclick="location.href='dibOff'">
						</td>
					</c:if>	
					<td>
						장바구니
					</td>
				</tr>
			</tbody>	
		</table>
	</form>
</body>
</html>