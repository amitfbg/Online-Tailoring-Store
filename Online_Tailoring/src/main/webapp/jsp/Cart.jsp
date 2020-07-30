<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>
<script type="text/javascript">
function myFunction() {

	var cart='<%= session.getAttribute("cartlist") %>';
	if(cart=="null")
		{
		alert("Cart is Empty!!!!");
		return false;		
		}
	else
		{
		if(!confirm("Press ok to confirm your order\nOnce your order is placed it will be delivered to you within 7 days") )
			return false;
		}
}
</script>
<style>
body {
	background-image: url(../images/Cart.jpg);
	position: relative;
	padding-top: 40px;
	background-color: black;
	background-repeat: repeat;
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

input[type=submit] {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	
}

input[type=submit]:hover {
	background-color: #45a049;
}

</style>
</head>
<body>
	<ul>
		<li><a class="active" href="#main">Product</a></li>
		<li><a href="ApparelView">Home</a></li>
		<li><a href="#contact">Contact</a></li>
		<li><a href="orders">Orders</a></li>
		<li style="float: right"><a href="Cart">Cart</a></li>
		<li style="float: right"><a href="logout">Logout</a></li>
	</ul>

<h1 align="center">Cart Item</h1> 
<table id="t01"  >  
<tr><th>Apparel Id</th><th>Apparel Type</th><th>Gender</th><th>Size</th><th>Color</th><th>Material</th><th>Cost</th></tr>  
   <c:forEach var="cl" items="${cartlist}">   
   <tr>  
   <td>${cl.apparelId}</td>  
   <td>${cl.apparelType}</td>  
   <td>${cl.gender}</td>
   <td>${cl.size}</td>
   <td>${cl.color}</td>
   <td>${cl.material}</td>
   <td>${cl.price}</td> 
   </tr>  
   </c:forEach>  
   </table>
   <br>
   <br>
   <div align="center">
   <form action="success" >
   <input  type="submit" value="Place Order" onClick="return myFunction()">
   </form>
   </div>

</head>
<body>


</body>
</html>