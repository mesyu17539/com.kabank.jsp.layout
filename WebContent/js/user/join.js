/**
 * 
 */
function init() {
	var check=document.querySelector('#check_dupl');
	var joinconform=document.querySelector('#join_conform_btn');
	check.addEventListener("click",checkDupl,false);
	joinconform.addEventListener("click",joincheckDupl,false);
}
function checkDupl(e) {
	alert('중복체크 클릭');
	e.preventDefault();
}
function joincheckDupl() {
	var joinId=document.querySelector('#join_id').value;
	var joinPass=document.querySelector('#join_pass').value;
	alert('가입 확인 클릭'+joinId+'비번 '+joinPass);
	document.querySelector('#join_form').submit();
	sessionStorage.setItem('id',joinId);
	sessionStorage.setItem('pass',joinPass);
}
window.addEventListener("load",init,false);

