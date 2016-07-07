function checkNum() {
	var num1 = document.getElementById("id").value;
	var num2 = document.getElementById("password").value;
	if(num1=="" || num2=="") {
		window.alert("请输入登录名和密码");
		return false;
	}
	//正则表达式，验证是否为非数字提交
	var reg = /^[1-9]\d*(\.[0-9]+)?$|^0$/i;
	if(!reg.test(num1)) {
		window.alert("用户名格式错误");
		return false;
	
	
	}
}
