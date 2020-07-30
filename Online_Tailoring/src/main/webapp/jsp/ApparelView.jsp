<%@page import="com.Online_Tailoring.Model.Cart_Apparel"%>
<%@page import="com.Online_Tailoring.Controller.Demo_Controller"%>
<%@page import="org.springframework.ui.Model"%>
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
body {
	background-image: url(../images/Apparel.jpg);
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
#t02 tr:nth-child(odd) {
 background-color: #eee;
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
		<li><a href="orders">Orders</a></li>
		<li style="float: right"><a href="Cart">Cart</a></li>
		<li style="float: right"><a href="logout">Logout</a></li>
	</ul>

<h1 align="center">Apparel Tables</h1>
<form action="SaveToCart" method="post">  
<table id="t01"  >  
<tr><th>Apparel Type</th><th>Gender</th><th>Size</th><th>Color</th><th>Material</th><th>Select</th></tr>  
 
   <tr>    
   <td><select id="ApparelType" name="ApparelType">
    <option value="Tshirt">Tshirt</option>
    <option value="Shirt">Shirt</option>
    <option value="Pants">Pants</option>
    <option value="Shorts">Shorts</option>
  </select></td>  
   <td><select id="Gender" name="Gender">
   <option value="Male">Male</option></select></td>
   <td><select id="Size" name="Size">
    <option value="S">S</option>
    <option value="M">M</option>
    <option value="L">L</option>
    <option value="XL">XL</option>
  </select></td> 
  <td><select id="color" name="color">
    <option value="Red">Red</option>
    <option value="Blue">Blue</option>
    <option value="Black">Black</option>
    <option value="White">White</option>
    <option value="Green">Green</option>
  </select></td>
  <td><select id="material" name="material">
    <option value="Cotton">Cotton</option>
    <option value="Silk">Silk</option>
    <option value="Polyester">Polyester</option>
    <option value="Nylon">Nylon</option>
  </select></td> 
   <td><input type="submit" value="Select"></td>   
   </tr>  
   </table> 
   </form>
   
   
<form action="SaveToCart" method="post">  
<table id="t02">   
   <tr>    
   <td><select id="ApparelType" name="ApparelType">
   <option value="Saree">Saree</option>
    <option value="Tshirt">Tshirt</option>
    <option value="Shirt">Shirt</option>
    <option value="Pants">Pants</option>
    <option value="Salwar Suit">Salwar Suit</option>
  </select></td>  
   <td><select id="Gender" name="Gender">
   <option value="Female">Female</option></select></td>
   <td><select id="Size" name="Size">
    <option value="S">S</option>
    <option value="M">M</option>
    <option value="L">L</option>
    <option value="XL">XL</option>
  </select></td> 
  <td><select id="color" name="color">
    <option value="Red">Red</option>
    <option value="Blue">Blue</option>
    <option value="Black">Black</option>
    <option value="White">White</option>
    <option value="Green">Green</option>
  </select></td>
  <td><select id="material" name="material">
    <option value="Cotton">Cotton</option>
    <option value="Silk">Silk</option>
    <option value="Polyester">Polyester</option>
    <option value="Nylon">Nylon</option>
  </select></td> 
   <td><input type="submit" value="Select"></td>   
   </tr>  
   </table> 
   </form>


</body>
</html>