<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교보문구</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" >
</head>
<body>
<%
	List<Map<String, Object>> list = new ArrayList<>();
	Map<String, Object> map = new HashMap<String, Object>() {
	    { 
	        put("id", 1000);
	        put("title", "아몬드"); 
	        put("author", "손원평"); 
	        put("publisher", "창비");
	        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
	    } 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
	    { 
	        put("id", 1001);
	        put("title", "사피엔스"); 
	        put("author", "유발 하라리"); 
	        put("publisher", "김영사");
	        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
	    } 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
	    { 
	        put("id", 1002);
	        put("title", "코스모스"); 
	        put("author", "칼 세이건"); 
	        put("publisher", "사이언스북");
	        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
	    } 
	};
	list.add(map);
	
	map = new HashMap<String, Object>() {
	    { 
	        put("id", 1003);
	        put("title", "나미야 잡화점의 기적"); 
	        put("author", "히가시노 게이고"); 
	        put("publisher", "현대문학");
	        put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
    	} 
	};
	list.add(map);
	
	// 하나의 책을 지칭할 수 있는 값을 파라미터로 전달 받는다.
	int id = Integer.parseInt(request.getParameter("id"));
	
	
	%>

	<div class="container">
	<% for(Map <String, Object> book:list) {
	if(id == (Integer)book.get("id")) {
		 %>
		<div class="d-flex">
			<div>
			<img src="<%= book.get("image") %>"></div>
			<div class="ml-4">
				<div class="display-1 font-weight-bold"><%= book.get("title") %></div>
				<div class="display-2 text-info mt-3"><%= book.get("author") %></div>
				<div class="display-4 mt-2"><%= book.get("publisher") %></div>
			</div>
		</div>
		<% }
		} %>
	</div>


		<script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/ui/1.14.0/jquery-ui.js"></script>
</body>
</html>