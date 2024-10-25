<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
</head>
<body>
	
	<h2>Calculator</h2>
	<form method="post" action="/jsp/test/test04.jsp">
	<div class="d-flex">
		<input type="text" class="form-control col-2" name="number1">
		<select class="form-control col-1 mx-2" name="operator">
			<option>+</option>
			<option>-</option>
			<option>x</option>
			<option>/</option>
		</select>
		<input type="text" class="form-control col-2" name="number2">
		<button type="submit" class= "btn btn-success ml-3"></button>
	</div>
	</form>
	
</body>
</html>