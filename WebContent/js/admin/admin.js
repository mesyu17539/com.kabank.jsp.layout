/**
 * 
 */
function init(){
	document.querySelector("#admin_button")
		.addEventListener("click",createTable,false);
	document.querySelector("#join_member")
	.addEventListener("click",joinMember,false);
}
function joinMember() {
	alert("버튼을 누름");
	location.href="../user/join.jsp";
}
function createTable() {
	alert("버튼을 누름");
	location.href="member_list.jsp";
}

window.addEventListener("load",init,false);