/**
 * 
 */
function goGogo() {
		location.href="https://bitcamp.co.kr/index.php?main_page=home"
}
function init() {
	document.querySelector('#bal').onclick = goGogo;
}
window.addEventListener("load",init,false)