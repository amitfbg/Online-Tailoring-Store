<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style type="text/css">
body {
	background-image: url(../images/Register.jpg);
	position: relative;
	padding-top: 10px;
	background-color: black;
	background-repeat: repeat-x;
	background-position: 0 40px;
}

table {
	border: 1px solid black;
	font-size: 20px;
	margin-left: auto;
	margin-right: auto;
	background-color: lightyellow;
}

th, td {
	padding: 0.5px;
}

h1 {
	font-size: 50px;
	padding-top: 20px;
	color: orange;
}

.term {
	font-size: 15px;
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

li
 
a
:hover
:not
 
(
.active
 
)
{
background-color
:
 
#111
;


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
		<li><a href="login">Log In</a></li>
		<li><a href="#contact">Contact</a></li>
		<li style="float: right"><a class="active" href="Register">Register</a></li>
	</ul>
	<h1 align="center">Registration</h1>
	<form action="login">
		<div class="centered">

			<table>
				<tr>
					<td>First name:</td>
					<td><input type="text" placeholder="First name" name="fname"
						id="fname" required /></td>
				</tr>

				<tr>
					<td>Last name:</td>
					<td><input type="text" placeholder="Last name" name="lname"
						id="lname" required /></td>
				</tr>

				<tr>
					<td>Sex:</td>
					<td><input type="text" placeholder="Sex" name="sex" id="sex"
						required /></td>
				</tr>

				<tr>
					<td>Age:</td>
					<td><input type="number" placeholder="Age" name="age" id="age"
						required /></td>
				</tr>

				<tr>
					<td>Phone Number:</td>
					<td><input type="number" placeholder="Phone Number"
						name="phonenumber" id="phonenumber" required /></td>
				</tr>

				<tr>
					<td>Address:</td>
					<td><input type="text" placeholder="Address" name="address"
						id="address" required /></td>
				</tr>

				<tr>
					<td>User Id:</td>
					<td><input type="email" placeholder="Enter email"
						name="userid" id="userid" required /></td>
				</tr>

				<tr>
					<td>Password:</td>
					<td><input type="password" placeholder="Enter password"
						name="password" id="password" required /></td>
				</tr>


				<tr>
					<td><p class="term">
							By creating an account you agree to our <a
								style="font-size: 10px;" href="#">Terms and Privacy</a>.
						</p></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Submit" /></td>
					<td><input type="reset" value="Reset" /></td>
				</tr>
				<tr>
					<td><p>
							Already have an account? <a href="login">Log in</a>.
						</p></td>
				</tr>
			</table>

		</div>
	</form>

</body>
</html>