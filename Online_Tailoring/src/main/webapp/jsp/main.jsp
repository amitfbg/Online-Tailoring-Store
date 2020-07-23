<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main</title>
</head>

<style>
.centered {
  color: red;
  font-size:2cm;
  position: absolute;
  top: 35%;
  left: 50%;
  transform: translate(-50%, -50%);
}
input[type=submit] {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}

</style>

<body>
	<div>
	<img src="../images/main_img.jpg" width=100% height=400px>
	<div class="centered">Tailoring Store</div>
	</div>
	<div align="center">
	<form action="Register" method="post">
	<input type="submit" name="Register" value="Register" >
	</form>
	<form action="login" method="post">
	<input type="submit" name="LogIn" value="Log in">
	</form>
	</div>

</body>
</html>