<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apparel</title>
<style>
body {
	background-color: gray;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	float: left;
}

button:hover {
	background-color: #45a049;
}

h1 {
	font-size: 50px;
	padding-top: 20px;
	color: Blue;
}

.column {
	float: left;
	width: 40%;
	padding: 60px;
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
		<li><a class="active" href="#main">Home</a></li>
		<li><a href="#contact">Contact</a></li>
		<li style="float: right"><a href="cart">Cart</a></li>
	</ul>
	<h1 align="center">Choose Your Style</h1>

	<div class="row">
		<div class="column">
			<button>Men</button>
			<img alt="Men" src="../images/men.jpg" style="width: 95%">

		</div>
		<div class="column">
			<button>Women</button>
			<img alt="Women" src="../images/women.jpg" style="width: 90%">

		</div>
	</div>
</body>
</html>