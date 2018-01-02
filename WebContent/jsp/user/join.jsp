<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="member" class="com.kabank.jee.domain.MemberBean" scope="request"/>
<%
Statement stat=null;
Connection conn=null;
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn=DriverManager.
			getConnection("jdbc:oracle:thin:@localhost:1521:xe",
					"bitcamp","bitcamp");
	stat=conn.createStatement();
	member.setId(request.getParameter("join_id"));
	member.setName(request.getParameter("name"));
	member.setPass(request.getParameter("pass"));
	member.setSsn(request.getParameter("ssn1")+request.getParameter("ssn2"));
	member.setPhone(request.getParameter("phone1")+request.getParameter("phone2")+request.getParameter("phone3"));
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
	stat.executeQuery(sql);
} catch (Exception e) {
	e.printStackTrace();
}
pageContext.forward("../index.jsp");
%>