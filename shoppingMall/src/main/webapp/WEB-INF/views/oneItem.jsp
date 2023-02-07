<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
			</tbody>	
		</table>
	</form>
</body>
</html>