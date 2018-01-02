<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.kabank.jee.domain.LottoBean" %>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp" %>
<body>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<section>
<%!
	List<LottoBean> lotto;
	public int countRow(String money){
		int count=Integer.parseInt(money);
		return count;
	}
	public List<LottoBean> createLottos(){
		lotto=new ArrayList<>();
		return lotto;
	}
	public List<LottoBean> createLotto(int count){
			String foo;
			LottoBean lBean;
			int[] ar=new int[6];
			for(int i=0;i<count/1000;i++) {
				foo="";
				ar[0]=(int)(Math.random()*44+1);
				for(int j=1;j<6;j++) {
					ar[j]=(int)(Math.random()*44+1);
					for(int k=0;k<j;k++) {
						if(ar[j]==ar[k]) {
							j--;
							break;
						}
					}
				}
				for(int bar=0;bar<ar.length;bar++) {
					Arrays.sort(ar);
					foo=foo.concat(String.valueOf(ar[bar]+" "));
				}
				lBean= new LottoBean();
				lBean.setLottoNum(foo);
				lotto.add(lBean);
		}
		return lotto;
	}
%>
<div>
<%
	int count=countRow(request.getParameter("count"));
	createLottos();
%>
<%
	for(LottoBean lot : createLotto(count)){
		%>
			<%= lot %> <br />
		<%
	}
%>	
</div>
</section>
<aside></aside>
<%@ include file="../common/foorter.jsp" %>
</body>
</html>