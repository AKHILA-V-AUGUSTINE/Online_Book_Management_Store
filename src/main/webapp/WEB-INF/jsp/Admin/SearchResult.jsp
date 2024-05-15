<%@ include file="HeaderContent.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Results</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="center">
<h1>THE SEARCH RESULTS</h1>
	<table style='margin-top:20px;'>
		<thead>
			
			<tr>
				<th>Name</th>
				<th>ContactNumber</th>
				<th>Email</th>
				<th>Username</th>
				<th>Role</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users}" var="user">
				<tr>
					<td>${user.userName}</td>
					<td>${user.userContact}</td>
					<td>${user.userEmail}</td>
					<td>${user.userUsername}</td>
					<td>${user.userRole}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

</body>
</html>
<%@ include file="FooterContent.jsp"%>