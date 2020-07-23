<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main</title>
</head>

<style>
body {
	position: relative;
	padding-top: 20px;
	background-color: black;
	background-image: url(../images/main_img.jpg);
	background-repeat: repeat-x;
	background-position: 0 40px;
}

.centered {
	color: red;
	font-size: 2cm;
	position: centre;
}

ul {
	position: fixed;
	top: 0;
	width: 100%;
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover:not (.active ) {
	background-color: #111;
}

.active {
	background-color: #4CAF50;
}
</style>

<body>
	<ul>
		<li><a class="active" href="main">Home</a></li>
		<li><a href="login">Log In</a></li>
		<li><a href="#contact">Contact</a></li>
		<li style="float: right"><a href="Register">Register</a></li>
	</ul>
	<br>
	<div class="centered" align="center">Tailoring Store</div>
	<div id="div1"></div>

</body>
</html>