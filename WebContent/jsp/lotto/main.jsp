<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp" %>
<link rel="stylesheet" href="../../css/lotto.css">
<body>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<section>
	<form action="result.jsp">
		구매 금액 : <input type="text" name="count" placeholder="개당 1000원 최대 5게임"/>
		<input type="submit" value="전송"/>
	</form>
</section>
<aside></aside>
<%@ include file="../common/foorter.jsp" %>
</body>
<script src="../../js/lotto/lotto.js" ></script>
</html>