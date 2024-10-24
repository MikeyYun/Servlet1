<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>current date and time</title>

		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" >
</head>
<body>
	
	<%
		Date date = new Date();
	
		SimpleDateFormat dateFormatter = new SimpleDateFormat("YYYY년 M월 d일");
		SimpleDateFormat timeFormatter = new SimpleDateFormat("H시 m분 s초");
		
		String dateString = dateFormatter.format(date);
		String timeString = timeFormatter.format(date);
		
	%>
	
	<div class="container">
		<div class="display-4"><%=dateString %></div>
		<div class="display-4"><%=timeString %></div>
	
	</div>
	
	
			<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
            <script src="https://code.jquery.com/ui/1.14.0/jquery-ui.js"></script>
</body>
</html>