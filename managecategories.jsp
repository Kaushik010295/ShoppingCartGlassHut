<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Manage Categories</title>
<style>
body
{
  background-image:url(resources/images/bg10.jpg);

   background-repeat:repeat;

}
</style>
</head>
<body>

<center> <h1 style="color:black"> WELCOME TO GLASS HUT </h1></center><hr>

<form action="categorymanage" method="post">
<nav class="navbar navbar-default">
<div class="container-fluid">
<div class="navbar-header">
<a class="navbar-brand" href="#">GLASS HUT</a>
</div>
<ul class="nav navbar-nav">
<li class="item"> <a href="adminlogin"> HOME</a></li>

</ul>
<ul class="nav navbar-nav navbar-right">
<li class="item"> <a href="adminlogin"> Back</a></li>

<li class="item"> <a href="logout"> Logout</a></li>
</ul>

</div>
</nav>

<div class="container">
<br>
<br>

<center>
<h1 style="color:maroon"><u> Manage Categories</u></h1><br>

<table>
<tr>
<td>
<h3 style="color:maroon">Category Name : </td>
<td> <input type="text" name="cname"></td>
</tr>
<tr>
<td>
<h3 style="color:maroon">Category Description : </td>
<td> <input type="text" name="cdescription"></td>


<tr>
<td>
<h4 style="color:blue"><input type="submit" value="Add Category">

<input type="reset" value="Cancel"></h4>
</td>
</tr>
</table>
</form>
  <br><br><br><br><br><br><br><br><br><br>
  
<%@include file="footer.jsp"%>

