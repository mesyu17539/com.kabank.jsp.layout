/**
 * 
 */
function init() {
	var arr=['burgerking','kakao','lotto','sktelecom','bitcamp'];
	for(var i = 0; i < arr.length ; i++){
		document.querySelector('#'+arr[i]).addEventListener('click',
				function(e){
			location.href ="../"+this.id+"/main.jsp";
		},false);
	}
	document.querySelector('#order_btn').addEventListener('click',
			function(e) {
				document.querySelector('#order_form').submit();
			},false);
}
window.addEventListener("load",init,false);