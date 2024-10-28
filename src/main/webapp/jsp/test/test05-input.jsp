<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" >
</head>
<body>
	<div class="container">
		<h2>길이 변환</h2>
		
		<form method="post" action="/jsp/test/test05.jsp">
			<div class="d-flex align-items-end">
				<input type="text" class="form-control col-2" name="cm">
				<div class="ml-2">cm</div>
				</div>
				<div class="mt-2">
					<label>Inch <input type="checkbox" name="unit" value="inch"></label>
					<label>Yard <input type="checkbox" name="unit" value="yard"></label>
					<label>Feet <input type="checkbox" name="unit" value="feet"></label>
					<label>Meter <input type="checkbox" name="unit" value="meter"></label>
				</div>
				<button type="submit" class="btn btn-success">변환</button>
				</form>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.14.0/jquery-ui.js"></script>
</body>
</html>