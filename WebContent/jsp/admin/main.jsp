<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>관리자 화면</title>
</head>
<link rel="stylesheet" href="../../css/admin.css">
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
				<table id="admin_table">
					<tr>
						<td><button id="admin_button">테이블 생성</button></td>
						<td><button>테이블 생성</button></td>
						<td><button>테이블 생성</button></td>
					</tr>
					<tr>
						<td><button>테이블 생성</button></td>
						<td><button>테이블 생성</button></td>
						<td><button>테이블 생성</button></td>
					</tr>
				</table>
			</section>
</div>
<%@ include file="../common/foorter.jsp" %>
</body>
<script src="../../js/admin/admin.js" ></script>
</html>