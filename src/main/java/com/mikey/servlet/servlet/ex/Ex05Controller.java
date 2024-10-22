package com.mikey.servlet.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class Ex05Controller extends HttpServlet {
	
	// 보안적으로 위험한 데이터를 파라미터로 전달 받을 때
	// url로 표현하기 힘든 큰 데이터나 파일을 파라미터로 전달 받을 때 	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		// receive a name and birth
		// put together the name and birth of organized HTML
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday"); // 20240812
		
		String birthYear = birthday.substring(0,4);
		
		int year = Integer.parseInt(birthYear);
		int age = 2024 - year;
//		{"name" : "엄시윤", "age" : "22"}
//		out.println("{\"name\ ":\"" + name + "\",\"age\":" + age + "}");
		
		out.println("<html>\n"
		+ "		<head><title>Information</title></head>\n"
				+ "			<body>\n"
				+ "				<h3>Name : " + name + "</h3>\n"
				+ "				<h3>Age : " + age + "</h3>\n"
				+ "			</body>\n"
				+ "		</html>");
		
	}
}