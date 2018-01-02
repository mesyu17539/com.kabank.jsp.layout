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
	alert("뽐으로");
	location.href="member_register_form.jsp";
}
window.addEventListener("load",init,false);