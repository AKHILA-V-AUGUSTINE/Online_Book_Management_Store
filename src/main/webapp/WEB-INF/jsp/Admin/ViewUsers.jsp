<%@ include file="HeaderContent.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User List</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div class="center">
		<a href="/add-user">Add User</a>

		<c:if test="${empty users}">
			<h2>No users found!</h2>
		</c:if>

		<c:if test="${not empty users}">
			<div>
				<form action="/search-users" method="get">
					<input type="text" name="query" placeholder="Search users...">
					<button type="submit">Search</button>
				</form>
				<br><br>
				<th><a href="/view-users/sort/userName/asc">ASC (A-Z)</a></th>
            <th><a href="/view-users/sort/userName/desc">DES (Z-A)</a></th>
				<table>
					<thead>
						<tr>
							<th>Name</th>
							<th>Contact Number</th>
							<th>Email</th>
							<th>Username</th>
							<th>Role</th>
							<th>Edit</th>
							<th>Delete</th>
						</tr>
					</thead>

					<tbody>
						<c:forEach var="user" items="${users}">
							<tr>
								<td>${user.userName}</td>
								<td>${user.userContact}</td>
								<td>${user.userEmail}</td>
								<td>${user.userUsername}</td>
								<td>${user.userRole}</td>
								<td><a href="/user-update/${user.userId}">Edit</a></td>
								<td><a href="/user-delete/${user.userId}">Delete</a></td>
							</tr><br><br>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</c:if>
	</div>
</body>
</html>
<%@ include file="FooterContent.jsp"%>
