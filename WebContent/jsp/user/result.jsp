<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.kabank.jee.domain.MemberBean" %>
<jsp:useBean id="member" class="com.kabank.jee.domain.MemberBean"/>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp" %>
<body>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<section>
<%
member.setAddr(request.getParameter("addr"));
member.setEmail(request.getParameter("email")+request.getParameter("url"));
member.setId(request.getParameter("id"));
member.setName(request.getParameter("name"));
member.setPass(request.getParameter("pass"));
member.setPhone(request.getParameter("phone"));
/* member.setProfile(request.getParameter("addr")); */
/* member.setSsn(request.getParameter("ssn1")+"-"+request.getParameter("ssn2").charAt(0)); */

List<MemberBean> list = new ArrayList<>();
list.add(member);
%>
<article>
	<header>
		
		<%for(MemberBean b:list){
		%>
			<%=b %><br />
		<%
		}%>
	</header>
</article>
<article>
</article>
</section>
<%@ include file="../common/foorter.jsp" %>
</body>
</html>