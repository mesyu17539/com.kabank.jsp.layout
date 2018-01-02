<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>관리자 화면</title>
</head>
<link rel="stylesheet" href="../../css/admin_add_member.css">
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
			<form id="register_form" action="member_register.jsp">
				<table id="admin_table">
					<tr>
						<th>ID</th>
						<td><input id="id" type="text" name="id"/></td>
					</tr>
					<tr>
						<th>이 름</th>
						<td><input id="name" type="text" name="name"/></td>
					</tr>
					<tr>
						<th>주민번호</th>
						<td><input id="ssn" type="text" name="ssn"/></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input id="phone" type="text" name="phone"/></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input id="mail" type="text" name="email"/></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input id="addr" type="text" name="addr"/></td>
					</tr>
					<tr>
						<td colspan="8"><button id="add_member_btn">추가</button></td>
					</tr>
				</table>
			</form>
			</section>
</div>
<%@ include file="../common/foorter.jsp" %>
</body>
<script src="../../js/admin/member_register_form.js" ></script>
</html>