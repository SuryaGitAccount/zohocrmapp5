<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ include file= "menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Contacts</title>
</head>
<body>
<h2>All Contacts</h2>
<table>
	<tr>
		<th>FIRST NAME</th>
		<th>LAST NAME</th>
		<th>EMAIL</th>
		<th>MOBILE</th>
		<th>SOURCE</th>
		<th>BILLING</th>
	</tr>
	<c:forEach var="contact" items="${contacts}">
	<tr>
		<td>${contact.firstName}</td>
		<td>${contact.lastName}</td>
		<td>${contact.email}</td>
		<td>${contact.mobile}</td>
		<td>${contact.source}</td>
		<td><a href= "createBill?id=${contact.id}">billing</a></td>
	</tr>
	</c:forEach>
	</table>

</body>
</html>