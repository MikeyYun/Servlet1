<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post 입력</title>
</head>
<body>

	<form method="post" action="/jsp/ex/ex03.jsp">
	<label>Nickname : </label> <input type="text" name="nickname">
	<br>
	<!-- choose your favorite animal -->
	<h3>choose your favorite animal</h3>
	<label>dog<input type="radio" name="animal" value="dog"></label>
	<label>cat<input type="radio" name="animal" value="cat"></label>
	<label>lion<input type="radio" name="animal" value=lion></label>
	
	<!-- select box -->
	<h3>choose one your famous fruit</h3>
	<select name="fruit">
		<option value="banana">banana</option>
		<option value="strawberry">strawberry</option>
		<option>pitch</option>
	</select>
	
	<!-- check box -->
	<h3>choose your famous food</h3>
	<label>Mint Choco<input type="checkbox" name="food" value="MintChoco"></label>
	<label>Hawaian Pizza<input type="checkbox" name="food" value="HawaianPizza"></label>
	<label>Pupa<input type="checkbox" name="food" value="Pupa"></label>
	
	<br>
	<button type="submit">Enter</button>
	</form>
</body>
</html>