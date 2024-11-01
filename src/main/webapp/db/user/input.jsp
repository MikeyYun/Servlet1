<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>
</head>
<body>
	<title>사용자 추가</title>
	
	<form method="get" action="/db/user/create">
	<label>이름 : <input type="text" name="name"></label>
	<label>생년월일 : <input type="text" name="birthday"></label>
	<label>이메일 : <input type="text" name="email"></label>
	<button type="submit">추가</button>
	</form>
</body>
</html>