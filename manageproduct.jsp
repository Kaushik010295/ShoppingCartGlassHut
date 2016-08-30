
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/bootstrap/js/jquery-1.9.1.mini.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script type="text/javascript" src="resources/bootstrap/js/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="resources/bootstrap/js/bootstrap.min.js"></script>


<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
<style>
body {
background-color:red;
}
</style>
</head>
<body>

<center> <h1 style="color:white"> SUNGLASS HUT</h1></center><hr>


<nav class="navbar navbar-default">
<div class="container-fluid">
<div class="navbar-header">
<a class="navbar-brand" href="#">Glass HuT</a>
</div>
<ul class="nav navbar-nav">
<li class="item"> <a href="adminlogin"> HOME</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li class="item"> <a href="adminlogin"> Back</a></li>

<li class="item"> <a href="logout"> Logout</a></li>
</ul>


</ul>
</div>
</nav>
<div align="center">
<form:form action="productupdation" method="post" commandName="product" modelAttribute="product" enctype="multipart/form-data">
<table border="0">
<tr><td>
<center><td colspan="0" align="center"><h2 style="color:white">Manage Product</td></center>
</td></tr>
<tr>
<td><form:label path="pname"> <h2 style="color:white">Product Name:</form:label></td>
<td><form:input path="pname" /></td>
</tr>

            <tr>
            <td><form:label path="pdescription"><h2 style="color:white">Product Description:</form:label></td>
                <td><form:input path="pdescription" /></td>
            </tr><br>
            <tr>
                <td><form:label path="price"><h2 style="color:white">Product Price:</form:label></td>
               <td><form:input path="price" /></td>
            </tr>     
            <tr>
                 <td><form:label path="quantity"><h2 style="color:white">Product Quantity:</form:label></td>
                 <td><form:input path="quantity" /></td>
            </tr>     
             
            <tr>
                 <td><form:label path="img"><h2 style="color:white">Image Upload:</form:label></td>
                 <td><form:input type="file" path="img"  /></td>
           </tr>       
   
                 
                <tr><td>
                <tr>
				<td><form:label path="supplier">
				<h2 style="color:white">Supplied By:</form:label></td>
				 <td><form:select path="supplier.sname" items="${supplierList}" itemValue="sname" itemLabel="sname" /></td>
			</tr>
			 <tr><td>
                <tr>
				<td><form:label path="category">
				<h2 style="color:white">Category :</form:label></td>
				 <td><form:select path="category.cname" items="${categoryList}" itemValue="cname" itemLabel="cname" /></td>
			</tr>
			<tr>
                
                </table>
            <h5 colspan="0" align="center" ><input type="submit" value="Add Product"></h5>
             <h5 colspan="0" align="center" ><input type="reset" value="Cancel"></h5>
           
          </td></tr>
       
  
       
</div>
<a href="adminlogin"><h2 align="left"><h2 style="color:white">Back</a> 
  </form:form>
<br><br>
<%@include file="displayproduct.jsp" %>
  <br><br><br><br><br><br><br><br><br><br>
  
<%@include file="footer.jsp"%>
