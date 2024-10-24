<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Start</title>
</head>
<body>
	
	<h2>1. 기본 문법</h2>
	
	<!-- html 주석 (소스 페이지에서 확인 가능) -->
	<%-- jsp 주석 (서버에서 처리되어 사라지는 주석) --%>
	
	<%-- 1부터 10까지의 합을 h3로 태그 구성 --%>
	
	
	<%
		int sum = 0;
	
		for(int i = 1; i <= 10; i++) {
			sum += i;
		}
	%>
	
	<h3>Total : <%= sum %> </h3>
	
	<input type="text" value="<%= sum %>">
	
	<div><%= sum * 2 %></div>
	
	<h2>handling of a list</h2>
	<%
		// making a list of an animal's name
		List <String> animalList = new ArrayList();
		animalList.add("cat");
		animalList.add("dog");
	%>
	
	<ul>
		<li><%= animalList.get(0)%></li>
		<li><%= animalList.get(1)%></li>
	</ul>
	
	<h2>making a method</h2>
	<%!
		// Hello World 문자열을 리턴하는 메소드
		public String getHelloWorld() {
		
			return "Hello World";
	}
	%>
	
	<h3><%= getHelloWorld() %></h3>
	
</body>
</html>