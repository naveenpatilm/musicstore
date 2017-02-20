<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<thead>
			<th>Product Name</th>
			<th>Category</th>
			<th>Status</th>
			<th>Stock</th>
			<th>Manufacturer</th>
			<th>Description</th>
			<th>Price</th>
			<th>Condition</th>
		</thead>
		<tr>
		<td>${product.productName}</td>
		<td>${product.productCategory}</td>
		<td>${product.productStatus}</td>
		<td>${product.unitInStock}</td>
		<td>${product.productManufacturer}</td>
		<td>${product.productDescription}</td>
		<td>${product.productPrice}</td>
		<td>${product.productCondition}</td>
	</tr>
	</table>
</body>
</html>