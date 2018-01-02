<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="com.kabank.jee.domain.MemberBean" scope="request"/>
<%
Statement stat=null;
Connection conn=null;
ResultSet rs=null;
try {
	Class.forName("oracle.jdbc.driver.OracleDriver"); /*재귀호출 내가 나를 호출함. 이거 위치는 내부에 있는 라이브러리가 아니라 
														외부에 내가 지정한 라이브러리 ojdbc6의 경로를 나타낸다.*/
	conn=DriverManager.
			getConnection("jdbc:oracle:thin:@localhost:1521:xe",
					"bitcamp","bitcamp");
	stat=conn.createStatement();
	member.setId(request.getParameter("id"));
	member.setName(request.getParameter("name"));
	member.setPass(request.getParameter("pass"));
	member.setSsn(request.getParameter("ssn"));
	member.setPhone(request.getParameter("phone"));
	member.setEmail(request.getParameter("email"));
	member.setProfile(request.getParameter("profile"));
	member.setAddr(request.getParameter("addr"));
	String sql=String.format(
			"INSERT INTO Member ("
			+" id ,"
			+" name , "
			+" pass , "
			+" ssn , "
			+" phone , "
			+" email , "
			+" profile , "
			+" addr  "
			+")VALUES('%s','%s','%s','%s','%s','%s','%s','%s')"
					,member.getId()
					,member.getName()
					,member.getPass()
					,member.getSsn()
					,member.getPhone()
					,member.getEmail()
					,member.getProfile()
					,member.getAddr()
					);
	stat.executeUpdate(sql);
} catch (Exception e) {
	e.printStackTrace();
}
pageContext.forward("member_list.jsp");
%>