<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" >
</head>
<body>
		
		<div class="container">
		<% List<String> goodsList = Arrays.asList(new String[]{ 
    		"cyanide", "iPhone", "Mac", "에어팟", "신발", "양말"
		});  %>
		
			<h3 class="text-center">shopping list</h3>
			<table class="table text-center">
				<thead>
					<tr>
						<th>number</th>
						<th>item</th>
					</tr>
				</thead>
				<tbody>
				<% for(int i = 0; i < goodsList.size(); i++) { %>
					<tr>
						<td><%= i + 1 %></td>
						<td><%= goodsList.get(i) %></td>
					</tr>
					<% } %>
				</tbody>
			</table>
		
		</div>

		<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.14.0/jquery-ui.js"></script>
</body>
</html>