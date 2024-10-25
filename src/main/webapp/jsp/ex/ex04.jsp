<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자료구조 다루기</title>
</head>
<body>
	<%
		// tourist list
		List<String> tourList = new ArrayList<>();
		
		tourList.add("Mikey");
		tourList.add("Ashleigh");
		tourList.add("Gatsby");
	%>
	
	<table border="1">
	<% 
		for(String tourlist : tourList) { %>
		<tr>
			<td> <%= tourlist %></td>
		</tr>
		<% }
	%>
	</table>
	
	<%
		Map<String, Integer> score1 = new HashMap<>();
		score1.put("국어", 90);
		score1.put("수학", 95);
		score1.put("영어", 80);
		
		Map<String, Integer> score2 = new HashMap<>();
		score2.put("국어", 100);
		score2.put("수학", 90);
		score2.put("영어", 70);
		
		Map<String, Integer> score3 = new HashMap<>();
		score3.put("국어", 100);
		score3.put("수학", 50);
		score3.put("영어", 40);
		
		Map<String, Integer> score4 = new HashMap<>();
		score4.put("국어", 50);
		score4.put("수학", 70);
		score4.put("영어", 100);
		
		List<Map<String, Integer>> scoreList = new ArrayList<>();
		scoreList.add(score1);
		scoreList.add(score2);
		scoreList.add(score3);
		scoreList.add(score4);
		
		
	%>
	
	<table border="1">
		<thead>
		<tr>
			<th>국어</th>
			<th>수학</th>
			<th>영어</th>
		</tr>
		</thead>
		<tbody>
		<% for(Map<String, Integer> score:scoreList) {%>
			<tr>
				<td><%= score.get("국어") %></td>
				<td><%= score.get("수학") %></td>
				<td><%= score.get("영어") %></td>
			</tr>
			<% } %>
		</tbody>
		
	</table>
	
</body>
</html>