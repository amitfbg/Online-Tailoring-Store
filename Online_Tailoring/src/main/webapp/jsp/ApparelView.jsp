<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apparel View</title>
<style>
table {
  width:70%;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}
#t01 tr:nth-child(even) {
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

h1 {
	font-size: 50px;
	padding-top: 20px;
	color: orange;
}

</style>
</head>
<body>
	<ul>
		<li><a class="active" href="#main">Product</a></li>
		<li><a href="#home">Home</a></li>
		<li><a href="#contact">Contact</a></li>
		<li style="float: right"><a href="cart">Cart</a></li>
		<li style="float: right"><a href="logout">Logout</a></li>
	</ul>

<h1 align="center">Apparel Tables</h1> 
<table id="t01"  >  
<tr><th>Apparel Id</th><th>Apparel Type</th><th>Gender</th><th>Select</th></tr>  
   <c:forEach var="app" items="${list}">   
   <tr>  
   <td>${app.apparelId}</td>  
   <td>${app.apparelType}</td>  
   <td>${app.gender}</td>   
   <td><a href="editemp/${app.apparelId}">Select</a></td>   
   </tr>  
   </c:forEach>  
   </table> 


</body>
</html>