/**
 * 
 */
 function validate() {
	var username = document.getElementById("username");
	var password = document.getElementById("password");
	if(username = "") {
		alert("Please enter your username");
		return false;
	}
	if (password = "") {
		alert("Please enter your password");
		return false;
	}
	return true;
}
 