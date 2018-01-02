<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>예제종목</title>
	<link rel="shortcut icon" href="../img/favicon.ico">
	<link rel="stylesheet" href="../css/common.css">
	<link rel="stylesheet" href="../css/index.css">
	<script src="../js/index.js"></script>
</head>
<body>
<div id="wrapper">
<header id="index_header">
	홈즈
</header>
<section id="index_section">
	<article>
		<table id="index_table">
			<tr>
				<th colspan="5"><a href="#">HOME</a></th>
			</tr>
			<tr>
				<td colspan="5">
				<form action="burgerking/main.jsp">
					<table id="index_login_box">
						<tr>
							<td><input id="index_input_id" type="text" placeholder="id" tabindex="1"/></td>
							<td rowspan="2"><input id="index_input_btn" type="submit" value="로그인" tabindex="3"/></td>
						</tr>
						<tr>
							<td><input id="index_input_password" type="password" placeholder="pass" tabindex="2"/></td>
						</tr>
					</table>
				</form>
				<!-- 
				<a href="member/join.jsp" onmouseover="마우스 올림">
					회원가입???
				</a>
				<p onclick=showAlert();>
					처음 오셨나요
				</p>
				 -->
				<a id="go_join_link" href="#">
					처음 오셨나요 
				</a>
				<a id="go_admin_link" href="#">
					관리자
				</a>
				</td>
			</tr>
		</table>
	</article>
</section>
</div>
<%@ include file="common/foorter.jsp" %>
</body>
</html>