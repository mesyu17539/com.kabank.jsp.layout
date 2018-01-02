/**window.addEventListener("load",init,false);
 * function init(){
 * document.querySelecter("#").addEventListener("click",addmember,false);
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
	alert("리스트로");
	location.href="member_list.jsp";
}
window.addEventListener("load",init,false);