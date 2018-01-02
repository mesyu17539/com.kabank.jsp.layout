<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>JDBC</title>
</head>
<body>
<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver"); //재귀호출 내가 나를 호출함.
		Connection conn=DriverManager.
				getConnection("jdbc:oracle:thin:@localhost:1521:xe", //getConnection 연결하다
						"bitcamp","bitcamp");
		Statement stat=conn.createStatement();
		String sql="SELECT * FROM tab";/* "SELECT COUNT(*) AS count FROM tab"; //COUNT(*) 전체 수 */
		ResultSet rs=stat.executeQuery(sql); //executeQuery sql 실행
		String count="?";
		while(rs.next()){
			count = rs.getString("count"); //getString 결과전송
		}
			%> 테이블 갯수는 <%= count%> 입니다 <%
	}catch(Exception e){
		e.printStackTrace();
	}
%>	
</body>
</html>