<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method</title>
</head>
<body>
	
	<%
	String name = request.getParameter("name");
	String birthDay = request.getParameter("birthday");
	
	int year = Integer.parseInt(birthDay.substring(0, 4));
	
	int age = 2024 - year;
		
	%>
	
	<table border="1">
		<tr>
			<td>이름</td>
			<td><%= name %></td>
		</tr>
		<tr>
			<td>나이</td>
			<td><%= age %></td>
		</tr>
	</table>
	
	
</body>
</html>