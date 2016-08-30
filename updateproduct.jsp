


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
<a class="navbar-brand" href="#">Glass HutT</a>
</div>
<ul class="nav navbar-nav">
<li class="item active"> <a =href="#"> HOME</a></li>

</ul>
</div>
</nav>
<div align="center">
<form:form action="productUpdate" method="get" commandName="product" modelAttribute="product">
<table border="0">
<tr><td>
<center><td colspan="0" align="center"><h2 style="color:white">Manage Product</td></center>
</td></tr>
<tr>
<td><form:label path="pid" > <h2 style="color:white">Product Id:</form:label></td>
<td><form:input path="pid"   readonly="true" disabled="true" /></td>
</tr>
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
             
               
   
                 </table>
                 
                <tr><td>
                <a href="updateProduct" class="btn btn-info" role="button">Update Details</a>
                
             <h5 colspan="0" align="center" ><input type="reset" value="Cancel"></h5>
           
          </td></tr>

</table>
       
</div>
<a href="Adminlogin"><h2 align="left"><h2 style="color:white">Back</a> 
  </form:form>
<br><br>



<%@include file="displayproduct.jsp" %>




























































