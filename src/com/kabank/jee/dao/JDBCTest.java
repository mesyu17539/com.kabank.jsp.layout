package com.kabank.jee.dao;

import java.sql.*;

public class JDBCTest {
	public static void main(String[] args) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver"); //재귀호출 내가 나를 호출함.
			Connection conn=DriverManager.
					getConnection("jdbc:oracle:thin:@localhost:1521:xe",
							"bitcamp","bitcamp");
			Statement stat=conn.createStatement();
			String sql="SELECT COUNT(*) AS count FROM tab"; //COUNT(*) 전체 수
			ResultSet rs=stat.executeQuery(sql);
			String count="";
			while(rs.next()) {
				count = rs.getString("count");
			}
			System.out.println("테이블 수 : "+count);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
