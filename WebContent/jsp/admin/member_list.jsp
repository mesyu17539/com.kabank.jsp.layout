<%@page import="com.kabank.jee.domain.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%
	Statement stat=null;
	Connection conn=null;
	ResultSet rs=null;
	List<MemberBean> result=new ArrayList<>();
try {
	Class.forName("oracle.jdbc.driver.OracleDriver"); /*재귀호출 내가 나를 호출함. 이거 위치는 내부에 있는 라이브러리가 아니라 
														외부에 내가 지정한 라이브러리 ojdbc6의 경로를 나타낸다.*/
	conn=DriverManager.
			getConnection("jdbc:oracle:thin:@localhost:1521:xe",
					"bitcamp","bitcamp");
	stat=conn.createStatement();
	String sql="SELECT * FROM tab";
	rs=stat.executeQuery(sql);
	List<String> list=new ArrayList<>();
	while(rs.next()){
		String temp = rs.getString("TNAME"); //getString 결과전송
		list.add(temp);
	}
	boolean exist =false;
	for(String s:list){
		if(s.equalsIgnoreCase("member")){
			exist=true;
			break;
		}
	}
	if(!exist){
			stat.execute("CREATE TABLE Member("
					+" id VARCHAR2(20) PRIMARY KEY,"
					+" name VARCHAR2(20), "
					+" pass VARCHAR2(20), "
					+" ssn VARCHAR2(20), "
					+" phone VARCHAR2(20), "
					+" email VARCHAR2(20), "
					+" profile VARCHAR2(20), "
					+" addr VARCHAR2(20) "
			+")");
	}else{
		rs=stat.executeQuery("SELECT id, pass, name, ssn, phone, "
				+" email, profile, addr "
				+"from MEMBER");
		while(rs.next()){
			MemberBean m = new MemberBean();
			String id=rs.getString("id");
			String name=rs.getString("name");
			String ssn=rs.getString("ssn");
			String phone=rs.getString("phone");
			String email=rs.getString("email");
			String profile=rs.getString("profile");
			String addr=rs.getString("addr");
			m.setId(id);
			m.setName(name);
			m.setName(ssn);
			m.setName(phone);
			m.setName(email);
			m.setName(profile);
			m.setName(addr);
			result.add(m);
		}
	}
} catch (Exception e) {
	e.printStackTrace();
}
 %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>관리자 화면</title>
</head>
<link rel="stylesheet" href="../../css/admin_member.css">
<body style="text-align: center;">
<header>
			<h1>관리자 페이지</h1>
</header>
<div id="admin_div">
			<aside id="admin_aside">
				<ul>
					<li>
						<a id="join_member" href="#">회원가입</a>
					</li>
					<li>
						보류중
					</li>
				</ul>
			</aside>
			<section id="admin_section">
			<select style="height: 30px;">
			<option value="">성별</option>
			<option value="">이름</option>
			<option value="">ID</option></select>
			<input type="text" id="searchStr" name="searchStr"/>
			<button id="searchbtn">검색</button><br /><br />
				<table id="admin_table">
					<tr>
						<th>NO</th>
						<th>ID</th>
						<th>이 름</th>
						<th>생년월일</th>
						<th>성별</th>
						<th>전화번호</th>
						<th>이메일</th>
						<th>주소</th>
					</tr>
						<%for(int i=result.size()-1;i>=0;i--) {%>
						<tr>
							<td><%= i+1 %></td>
							<td><%= result.get(i).getId() %></td>
							<td><%= result.get(i).getName()%></td>
							<td><%= result.get(i).getSsn()%></td>
							<td><%= result.get(i).getSsn()%></td>
							<td><%= result.get(i).getPhone()%></td>
							<td><%= result.get(i).getEmail()%></td>
							<td><%= result.get(i).getAddr()%></td>
						</tr>
						<%}%>
					<tr>
						<td colspan="8"><button id="add_member_btn">추가</button></td>
					</tr>
				</table>
			</section>
</div>
<%@ include file="../common/foorter.jsp" %>
</body>
<script src="../../js/admin/admins_member.js" ></script>
</html>