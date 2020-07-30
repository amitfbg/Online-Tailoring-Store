<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log In</title>
<style type="text/css">
body {
	background-image: url(../images/Login.jpg);
	position: relative;
	padding-top: 20px;
	background-color: black;
	background-repeat: repeat-x;
	background-position: 0 40px;
}

table {
	border: 1px solid black;
	font-size: 20px;
	margin-left: auto;
	margin-right: auto;
	background-color: lightgreen;
}

th, td {
	padding: 1px;
}

h1 {
	font-size: 50px;
	padding-top: 20px;
	color: orange;
}

.centered {
	color: red;
	font-size: 2cm;
	padding: 25px 50px;
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

input[type=submit], [type=reset] {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	float: right;
}

input[type=submit]:hover {
	background-color: #45a049;
}
</style>
</head>

<body>
	<ul>
		<li><a href="main">Home</a></li>
		<li><a class="active" href="login">Log In</a></li>
		<li><a href="#contact">Contact</a></li>
		<li style="float: right"><a href="Register">Register</a></li>
	</ul>
	<h1 align="center">Login</h1>
	<form action="login" method="post">
		<div class="centered">
			<table>
				<tr>
					<td>User Id:</td>
					<td><input type="email" placeholder="Enter email"
						name="UserId" id="UserId" required /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" placeholder="Enter password"
						name="Password" id="Password" required /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Submit" /></td>
					<td><input type="reset" value="Reset" /></td>
				</tr>
				<tr>
				<td><h3>${ms}</h3></td>
				</tr>
				
			</table>

		</div>
	</form>

</body>
</html>