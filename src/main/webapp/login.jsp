<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/validate.js"></script>
<style type="text/css">
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
	
</style>
</head>
<body>
	<%@ include file = "header.jsp" %>	
		
	<form  action="LoginController" onsubmit="return validate()" method="post">
		<div class="imgcontainer">
			<img class="avatar" alt="avatar" src="./img/avatar_login.png">
		</div>
		<div class="container">
			<label for="username">Username</label><br>
			<input id="username" type="text" name="username" required><br>
			<label for="password">Password</label><br>
			<input id="password" type="password" name="password" required><br><br>
			<input class="" type="submit" value="LOGIN">		
			<label>
      			<input type="checkbox" checked="checked" name="remember"> Remember me
    		</label>		
		</div>
		<div class="container" style="background-color:#f1f1f1">
    		<button type="button" class="cancelbtn">Cancel</button>
    		<span class="psw"><a href="/Thuvien/Forgot">Forgot password?</a></span>
	    </div>
	</form>
	<%@ include file = "footer.jsp" %>
</body>
</html>