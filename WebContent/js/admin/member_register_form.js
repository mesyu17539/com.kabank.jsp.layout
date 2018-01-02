/**
 * 
 */
function init() {
	document.querySelector("#add_member_btn").
		addEventListener("click",addMember,false);
	document.querySelector("#join_member")
	.addEventListener("click",joinMember,false);
}
function joinMember() {
	alert("버튼을 누름");
	location.href="../user/join.jsp";
}
function addMember() {
	alert("이ㅡ하");
	document.querySelector('#register_form').submit();//element를 넘김
	/*location.href="member_register.jsp";*///value 넘겨 페이지 넘어감 파라미터 넘겨줘야함
}
window.addEventListener("load",init,false);