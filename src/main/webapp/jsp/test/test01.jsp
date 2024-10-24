<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Test 01</title>
</head>
<body>

<h1>평균 점수 구하기</h1>
	<div>
	<%
	
	int[] scores = {80, 90, 100, 95, 80};
	
	int total = 0;
	
	for(int i = 0; i < scores.length; i++) {
		total += scores[i];
	}
	double average = total / (double)scores.length;
	%>
	<div><%=average%></div>
	</div>
	
	
	<h2>채점 결과</h2>
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	int score = 0;
	for(String answer : scoreList) {
		if(answer.equals("O")) {
			score += 100 / scoreList.size();
		}
	}
	%>
	
	
	<h3>채점 결과는 <%= score %>점입니다.</h3>
	
	<%!
		public int calculateSum(int number) {
			int sum = 0;
				for(int i = 0; i <= number; i++) {
					sum += i;	
				}
				return sum;
		}
	%>
	<div>1에서 50까지의 합은 <%= calculateSum(50) %>입니다.</div>
	
	<div>
	<%
		String birthDay = "20010820";
		int year = Integer.parseInt(birthDay.substring(0, 4));
		
		int age = 2024 - year;
	%>
	<div><%=birthDay %>의 나이는 <%= age%>살 입니다.</div>
	</div>
	
	
</body>
</html>