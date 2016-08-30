
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier List</title>
</head>
<body>
${message}
<h4>List of available Suppliers</h4>
<form:form method="post" action="updateSuppliers" modelAttribute="supplier">
<table width="50%">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Email id</th>
		<th>Phone Num</th>
		<th>Address</th>
		
	</tr>
	
	<c:forEach items="${supplierList}" var="supplier" varStatus="status">
		<tr>
			<td align="center">${status.count}</td>
			<td><input name="supplierList[${status.index}].sid" value="${supplier.sid}"/></td>
			<td><input name="supplierList[${status.index}].sname" value="${supplier.sname}"/></td>
						<td><input name="supplierList[${status.index}].semail" value="${supplier.semail}"/></td>
						<td><input name="supplierList[${status.index}].sphno" value="${supplier.sphno}"/></td>
			
			<td><input name="supplierList[${status.index}].saddress" value="${supplier.saddress}"/></td>
			
		</tr>
	</c:forEach>
</table>

</form:form>
</body>
</html>
