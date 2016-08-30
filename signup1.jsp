<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<center> <h1 style="color:white"> WELCOME TO SUNGLASS HUT </h1><hr>

<%@include file="header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Form</title>
<style>
body
{
  background-image:url(resources/images/bg10.jpg);

   background-repeat:repeat;

}
</style>
</head>
<body>
<br><br><br><br>
<center><h2><font color="indianred"><u>Registration Page</u></font></h2>
<font size="4">
<form:form action="signupcontroller" commandName="user" method="POST">
<table>
<tr>
<td>


First Name: 
</td>
<td><form:input path="ufirstname"></form:input><form:errors path="ufirstname" style="color:red"></form:errors>
</td>
<td>
Last Name: 
</td>
<td><form:input path="ulastname"></form:input><form:errors path="ulastname" style="color:red"></form:errors>
</td>
<tr>
<td>
UserName:
<select>
    <option value="Mr.">Mr</option>
          <option value="Miss.">Miss</option>
    
    <option value="Mrs.">Mrs</option>
    </select>
    </td>
    
<td> <form:input path="username"></form:input><form:errors path="username" style="color:red"></form:errors>
</td>
</tr>



<tr>
<td>
Password:
</td>
<td><form:password path="upassword"></form:password><form:errors path="upassword" style="color:red"></form:errors>
</td>
<td>
Confirm Password:
</td>
<td><form:password path="uconfirmpassword"></form:password><form:errors path="uconfirmpassword" style="color:red"></form:errors>
</td>

<tr>
<td>
EmailId: 
</td>


<td><form:input path="uemail"></form:input><form:errors path="uemail" style="color:red"></form:errors>
</td>

</tr>



<tr>
<td>
Phone Number:
</td>
<td> <form:input path="uphonenumber"></form:input><form:errors path="uphonenumber" style="color:red"></form:errors> </td>

</tr>
</font>
<tr>
<td>
<input type="submit" value="Register"/>
</td>
</tr>
</table>
</form:form>
</body>
</html>