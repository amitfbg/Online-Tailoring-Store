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
table {
	margin-top: 300px;
	font-size: 30px;
}
th, td {
	padding: 15px;
}
.term{
font-size:22px;
}
.centered {
  color: red;
  font-size:2cm;
  position: absolute;
  top: 35%;
  left: 50%;
  transform: translate(-50%, -50%);
}

</style>
</head>
<body>
	<form action="registration" >
		<div class="centered">
			<table class="flamenco">
				<caption>Registration</caption>
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
					<td>E-mail:</td>
					<td><input type="text" placeholder="Enter email" name="email"
						id="email" required /></td>
				</tr>

				<tr>
					<td>Password:</td>
					<td><input type="password" placeholder="Enter password"
						name="password" id="password" required /></td>
				</tr>


				<tr>
					<td><p class="term">
							By creating an account you agree to our <a style="font-size:20px;" href="#">Terms and
								Privacy</a>.
						</p></td>
				</tr>
				<tr>
				<td></td>
					<td><input type="submit" value="Submit" /></td>
				</tr>
				

				<tr>
					<td><p>
							Already have an account? <a href="login">Sign in</a>.
						</p></td>
				</tr>
			</table>

		</div>
	</form>

</body>
</html>