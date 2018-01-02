<%@page import="com.kabank.jee.domain.AttendBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ page import="java.sql.*" %>
<%
Statement stmt=null;
Connection conn=null;
ResultSet rs=null;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
			"bitcamp","bitcamp");
	stmt=conn.createStatement();
	String sql="SELECT * FROM tab";
	rs=stmt.executeQuery(sql);
	List<String> list=new ArrayList<>();
	while(rs.next()){
		String temp=rs.getString("TNAME");
		list.add(temp);
	}
	boolean exist = false;
	for(String s:list){
		if(s.equalsIgnoreCase("Attend")){
			exist=true;
		}
	}
	if(exist){
		/* rs=stmt.executeQuery("SELECT id, name, attend from Attend"); */
		/* while(rs.next()){
			AttendBean a=new AttendBean();
			String id=rs.getString("id");
			String name=rs.getString("name");
			String attend=rs.getString("attend");
			a.setId(id);
			a.setName(name);
			a.setName(attend);
			List<AttendBean> aList=new ArrayList<>();
			aList.add(a);
		} */
		stmt.execute(String.format("SELECT id, name, attend from Attend"));
	}else{
		stmt.executeUpdate("CREATE TABLE Attend("
				+" id VARCHAR2(20) PRIMARY KEY,"
				+" name VARCHAR2(20), "
				+" attend VARCHAR2(20) "
				+")");
	}
}catch(Exception e){
	e.printStackTrace();
}
%>
<%pageContext.forward("main.jsp"); %>