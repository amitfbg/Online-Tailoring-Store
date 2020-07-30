<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Placed</title>
<style type="text/css">
body {
	background-image: url(../images/Thankyou.jpg);
	position: relative;
	padding-top: 30px;
	background-color: black;
	background-position: 0 40px;
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
</head>
<body>
<ul>
		
		<li><a class="active">Success</a></li>
		<li><a href="ApparelView">Home</a></li>
		<li><a href="orders">Orders</a></li>
		<li style="float: right"><a href="logout">Logout</a></li>
	</ul>
	
</body>
</html>