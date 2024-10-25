<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Method</title>
</head>
<body>
	<%
	String nickname = request.getParameter("nickname");
	
	// receive one of your famous animal and show at Html.
	// cat, dog, lion etc..
	String animal = request.getParameter("animal");
	
	// receive your famous fruit and show at Html
	// banana, strawberry, pitch
	String fruit = request.getParameter("fruit");
	
	// receive all your famous foods and show at Html.
	// mint choco, hawaian pizza, pupa
	String[] foodArray = request.getParameterValues("food");
	
	String foodString = "";
	for(int i = 0; i < foodArray.length; i++) {
		foodString = foodString + foodArray[i] + " ";
	}
	
	%>
	
	<h3><%= nickname %></h3>
	<h3><%= animal %></h3>
	<h3><%= fruit %></h3>
	<h3><%= foodString %></h3>
	
	
</body>
</html>