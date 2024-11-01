package com.mikey.servlet.database.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mikey.servlet.commom.MysqlService;

@WebServlet("/db/user/create")
public class UserController extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
//		response.setContentType("text/plain");
//		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthda");
		String email = request.getParameter("email");
		
		MysqlService mysqlService = new MysqlService();
		
		mysqlService.connect();
		
		String query = "INSERT INTO `user`\n"
				+ "(`name`, `yymmdd`, `email`)\n"
				+ "VALUE\n"
				+ "('" + name + "'" + birthday + "', '" + email + "');";
		
		int count = mysqlService.update(query);
		
//		out.println(query);
//		out.println("result : " + count);
		
		// response - 클라이언트, list.jsp 에 새로운 요청을 하렴
		// redirect
		response.sendRedirect("db/user/list.jsp");
		
	}
}
