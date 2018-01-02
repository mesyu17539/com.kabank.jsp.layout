/**
 * 
 */
function init() {
	var goJoinLink = document.querySelector('#go_join_link');
	var goAdminLink = document.querySelector('#go_admin_link');
	var indexInputBtn = document.querySelector('#index_input_btn');
	goJoinLink.addEventListener("click",goJoin,false);
	goAdminLink.addEventListener("click",goAdmin,false);
	indexInputBtn.addEventListener("click",indexLogin,false);
}
function indexLogin(e) {
	var loginId = document.querySelector('#index_input_id').value;
	var joinid=sessionStorage.getItem('id');
	var loginPass = document.querySelector('#index_input_password').value;
	var joinpass=sessionStorage.getItem('pass');
	if(loginId === joinid){
		if(loginPass === joinpass){
			alert('회원가입한 아이디'+joinid);
		}else{
			e.preventDefault();
			alert('비번이 틀리다우')
		}
	}else{
		e.preventDefault();
		alert('입력하신 '+loginId+"는 없는 아이디입니다")
	}
}
function goJoin() {
	var admin = confirm('회원가입?');
	if(admin){
		location.href="user/join_form.jsp"
	}else{
		alert('취소했습니다');
	}
}
function goAdmin() {/* method 처럼 카멜 표기법으로 할 것 */
	var admin = confirm('관리자입니까?');
	if(admin){
		alert('안녕하세요 관리자 '+name);
		location.href="admin/main.jsp";
	}else{
		alert('관리자만 접근 가능합니다');
	}
}
window.addEventListener("load",init,false);