package com.mikey.servlet.database.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/db/ex/ex01")
public class Ex01Controller extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		// review 테이블의 모든 행을 조회해서 결과를 response 에 담기
		
		try {
			// database 접속
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			// 접속 주소, 포트, 아이디, 패스워드
			String url = "jdbc:mysql://localhost:3306/dbname";
			String id = "root";
			String password = "euomeuom00";
			
			Connection connection = DriverManager.getConnection(url, id, password);
			
			// 쿼리 수행
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT * FROM `score`;");
			
			// 쿼리 수행 결과 다루기
			while (resultSet.next()) {
			
			String name = resultSet.getString("name");
			int score = resultSet.getInt("score");
			String subject = resultSet.getString("subject");
			
			out.println("이름 : " + name + ", 점수 : " + score + "점 , 과목 : " + subject);
			
			}
			
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		

	}

}
