<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
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
							<input type="button" class="button" value="찜♡" id="zz">
						</td>
					</c:if>
					<c:if test="${not empty dibItem}">
						<td>
							<input type="button" class="button" value="찜❤️" id="aa">
						</td>
					</c:if>	
					<td>
						장바구니
						<input type="hidden" id="itemNo" name="itemNo" value="${oneShopItem.itemNo}">
						<input type="hidden" id="userNo" name="userNo" value="${loginUser.userNo}">
					</td>
				</tr>
			</tbody>	
		</table>
		<a href="shopItem">목록가기</a>
	</form>
</body>
<script type="text/javascript">

	$("#zz").click(function(){
		var itemNo1= $("#itemNo").val();
		var userNo1= $("#userNo").val();
		var result = confirm("찜 하시겠습니까?");
		if(result){
			$.ajax({
	            type: 'GET',
	            url: 'dibsOn?itemNo=${oneShopItem.itemNo}&userNo=${loginUser.userNo}',
	            data:{
	            	itemNo : itemNo1,
	            	userNo : userNo1
	            },
	            dataType : "json",
	            contentType: "application/json; charset=UTF-8",
	            success: function(data) {
						location.reload();
	            }
	        });
		}else{
			location.reload();
		}
	});

	$("#aa").click(function(){
		var itemNo1= $("#itemNo").val();
		var userNo1= $("#userNo").val();
		var result = confirm("찜 취소 하시겠습니까?");
		if(result){
			$.ajax({
	            type: 'GET',
            url: 'dibOff?itemNo=${oneShopItem.itemNo}&userNo=${loginUser.userNo}',
            data:{
            	itemNo : itemNo1,
            	userNo : userNo1
            },
            dataType : "json",
            contentType: "application/json; charset=UTF-8",
            success: function(data) {
					location.reload();
            }
		        });
			}else{
				location.reload();
			}
		});
</script>
</html>