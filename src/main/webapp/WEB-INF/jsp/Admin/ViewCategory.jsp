<%@ include file="HeaderContent.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Category</title>
<link href="<%= request.getContextPath() %>/css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="center">
	<h1>View Categories</h1><br>
	<c:if test="${empty categories}">
		<p>No categories found</p>
	</c:if>
	<c:if test="${not empty categories}">
		<table border="1">
			<thead>
				<tr>
					<th>Serial</th>
					<th>Name</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="category" items="${categories}" varStatus="loop">
					<tr>
						<td>${loop.index + 1}</td>
						<td>${category.catName}</td>
						<td><a href="<%= request.getContextPath() %>/edit-cat/${category.catId}">Edit</a>
							<a href="<%= request.getContextPath() %>/delete-cat/${category.catId}">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br>
		<a href="<%=request.getContextPath()%>/add-cat">Add New Category</a>
	</c:if>
</div>
</body>
</html>
<%@ include file="FooterContent.jsp"%>
