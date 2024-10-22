package com.mikey.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet{
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hapngoogle");
	        put("password", "univ");
	        put("name", "Mikey");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		
		out.println("<html>\n"
				+ "		<head><title>로그인 결과</title></head>\n"
				+ "			<body>\n");
		
		if(!id.equals(userMap.get("id"))) {
			out.println("	<h3>id가 일치하지 않습니다.</h3>\n");
		} else if (!password.equals(userMap.get("password"))) {
			out.println("	<h3>password가 일치하지 않습니다.</h3>\n");
		} else {
			out.println("	<h2>" + userMap.get("name") + " 환영합니다.</h2>");
		}
		
		out.println("		</body>\n"
				+ "		</head>");
		
	}
}