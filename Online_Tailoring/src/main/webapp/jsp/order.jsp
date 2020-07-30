<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order</title>
<style>
body {
	background-image: url(../images/Login.jpg);
	position: relative;
	padding-top: 20px;
	background-color: black;
	background-repeat: repeat-x;
	background-position: 0 40px;
}


table {
  width:100%;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}
#t01, tr:nth-child(even) {
  background-color: #eee;
}
#t01 tr:nth-child(odd) {
 background-color: #fff;
}
#t01 th {
  background-color: black;
  color: white;
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
		<li><a href="ApparelView">Home</a></li>
		<li><a class="active" href="orders">Orders</a></li>
		<li style="float: right"><a href="Cart">Cart</a></li>
		<li style="float: right"><a href="logout">Logout</a></li>
	</ul>

<h1>Order History</h1>  
<table id="t01">  
<tr><th>Apparel Id</th><th>Apparel Type</th><th>Gender</th><th>Size</th><th>Color</th><th>Material</th><th>Price</th></tr>  
   <c:forEach var="o" items="${list}">   
   <tr>  
   <td>${o.apparelId}</td>  
   <td>${o.apparelType}</td>  
   <td>${o.gender}</td>  
   <td>${o.size}</td> 
   <td>${o.color}</td>
   <td>${o.material}</td>
   <td>${o.price}</td>  
   </tr>  
   </c:forEach>  
   </table>

</body>
</html>