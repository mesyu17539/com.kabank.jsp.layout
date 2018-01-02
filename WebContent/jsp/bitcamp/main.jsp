<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp" %>
<link rel="stylesheet" href="../../css/common.css" />
<link rel="stylesheet" href="../../css/bitc.css" />
<body>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
	<aside id="bitc_aside">
		<h1>비트 캠프 메인</h1>
	</aside>
<section id="bitc_section">
<div id="wrapper">
<form action="result.jsp" id="bit_form">
<table id="bitc_table">
	<tr>
		<th></th>
		<th>월</th>
		<th>화</th>
		<th>수</th>
		<th>목</th>
		<th>금</th>
		<th></th>
	</tr>
	<tr>
		<th>결석</th>
		<td><input name="1" type="radio" checked="checked" value="결석"/></td>
		<td><input name="2" type="radio" checked="checked" value="결석"/></td>
		<td><input name="3" type="radio" checked="checked" value="결석"/></td>
		<td><input name="4" type="radio" checked="checked" value="결석"/></td>
		<td><input name="5" type="radio" checked="checked" value="결석"/></td>
		<td></td>
	</tr>
	<tr>
		<th>지각</th>
		<td><input name="1" type="radio" value="지각"/></td>
		<td><input name="2" type="radio" value="지각"/></td>
		<td><input name="3" type="radio" value="지각"/></td>
		<td><input name="4" type="radio" value="지각"/></td>
		<td><input name="5" type="radio" value="지각"/></td>
		<td></td>
	</tr>
	<tr>
		<th>조퇴</th>
		<td><input name="1" type="radio" value="조퇴"/></td>
		<td><input name="2" type="radio" value="조퇴"/></td>
		<td><input name="3" type="radio" value="조퇴"/></td>
		<td><input name="4" type="radio" value="조퇴"/></td>
		<td><input name="5" type="radio" value="조퇴"/></td>
		<td></td>
	</tr>
	<tr>
		<th>출석</th>
		<td><input name="1" type="radio" value="출석"/></td>
		<td><input name="2" type="radio" value="출석"/></td>
		<td><input name="3" type="radio" value="출석"/></td>
		<td><input name="4" type="radio" value="출석"/></td>
		<td><input name="5" type="radio" value="출석"/></td>
		<td></td>
	</tr>
	<tr>
		<th>결과</th>
		<%for(int i=1;i<=5;i++){
			%>
		<th>
			<%if(request.getParameter(String.format("%d",i))!=null){%>
				<%=request.getParameter(String.format("%d",i))%>
			<%}%> 
		</th>
		<%}%>
		<th><button id="bitcam_btn">출력</button></th>
	</tr>
</table>
<input type="hidden" id="id" value="tkddn"/>
</form>
</div>
</section>
<%@ include file="../common/foorter.jsp" %>
</body>
<script src="../../js/bitcamp/bitcam.js" ></script>
</html>
