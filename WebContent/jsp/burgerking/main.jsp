<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp" %>
<body>
<%@ include file="../common/header.jsp" %>
<%@ include file="../common/nav.jsp" %>
<section>
	<article>
		<header id="bkmenu_header">
			<h1> 버거킹 후문 화면</h1>
			<h2>상품과 수량을 선택해주세요</h2>
		</header>
	</article>
	<article>
	<div id="wrapper">
		<form id="order_form" action="result.jsp">
		<table id="bkmenu_table">
			<tr>
				<td>
				<figure>
					<img src="http://www.bk.com/sites/default/files/02372-2-BK_Web_ChickenCordonBleu_300x270px_CR.jpg" /><br />
					<figcaption>
						<input type="checkbox" name="menu" value="hamberger"/>햄버거 ￦11.000<br/>
						<input type="number" name="hambergercount" min="1" max="10" style="width: 30px;" placeholder="0" />개
					 </figcaption>
				</figure>
				</td>
				<td>
				<figure>
					<img src="../../png/cola.jpg"/><br />
						<figcaption>
							<input type="checkbox" name="menu" value="coke" />콜라 ￦1,000<br/>
							<input type="number" name="cokecount" min="1" max="10" style="width: 30px;" placeholder="0" />개
					 	</figcaption>
				</figure>
				</td>
				<td>
				<figure>
					<img src="../../png/chip.jpg" /><br />
						 <figcaption>
							<input type="checkbox" name="menu" value="chip"/>감자칩 ￦1,000<br/>
							<input type="number" name="chipcount" min="1" max="10" style="width: 30px;" placeholder="0" />개
						 </figcaption>
					</figure>
				</td>
			</tr>
			<tr>
				<td>
				<figure>
					<img src="../../png/coffe.jpg" /><br />
					 <figcaption>
						<input type="checkbox" name="menu" value="coffee" />커피 ￦600<br/>
						<input type="number" name="coffeecount" min="1" max="10" style="width: 30px;" placeholder="0" />개
					 </figcaption>
				</figure>
				</td>
				<td>
				<figure>
				<img src="../../png/salads.jpg"  /><br />
					 <figcaption>
					<input type="checkbox" name="menu" value="salads" />셀러드 ￦1000<br/>
					<input type="number" name="saladscount" min="1" max="10" style="width: 30px;" placeholder="0" />개
					 </figcaption>
				</figure>
					</td>
				<td>
				<figure>
				<img src="../../png/bagle.jpg"  /><br />
					 <figcaption>
					<input type="checkbox" name="menu" value="bagle" />베이글 ￦2000<br/>
					<input type="number" name="baglecount" min="1" max="10" style="width: 30px;" placeholder="0" />개
					 </figcaption>
				</figure>
					</td>
			</tr>
			<tr>
				<td colspan="3">
				<figure>
					 <figcaption>
					 </figcaption>
				</figure>
					<input type="radio" name="place" value="here" checked="checked"/>매장식사
					<input type="radio" name="place" value="takeout"/>테이크아웃
				</td>
			</tr>
			<tr>
				<td colspan="3">
				<figure>
					 <figcaption>
					 </figcaption>
				</figure>
					<input type="hidden" name="hamberger" value="11000"/>
					<input type="hidden" name="coke" value="1000" />
					<input type="hidden" name="chip" value="1000"/>
					<input type="hidden" name="coffee" value="600"/>
					<input type="hidden" name="salads" value="1000"/>
					<input type="hidden" name="bagle" value="2000"/>
					<input id="order_btn" type="submit" value="전 송" /><br />
				</td>
			</tr>
		</table>
		</form>
		</div>
		</article>
</section>
<aside>
</aside>
<%@ include file="../common/foorter.jsp" %>
</body>
<link rel="stylesheet" href="../../css/burgerking.css">
<script src="../../js/burgerking/burger.js" ></script>
</html>