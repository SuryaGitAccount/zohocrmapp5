<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ include file= "menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Leads</title>
</head>
<body>
<h2>All Leads</h2>
<table>
	<tr>
		<th>FIRST NAME</th>
		<th>LAST NAME</th>
		<th>EMAIL</th>
		<th>MOBILE</th>
		<th>SOURCE</th>
	</tr>
	<c:forEach var="lead" items="${leads}">
	<tr>
		<td><a href= "leadinfo?id=${lead.id}">${lead.firstName}</a></td>
		<td>${lead.lastName}</td>
		<td>${lead.email}</td>
		<td>${lead.mobile}</td>
		<td>${lead.source}</td>
	</tr>
	</c:forEach>
	</table>

</body>
</html>