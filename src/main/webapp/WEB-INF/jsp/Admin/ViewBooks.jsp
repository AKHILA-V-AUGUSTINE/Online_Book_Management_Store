<%@ include file="HeaderContent.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Books</title>
<link href="<%= request.getContextPath() %>/css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="center">
		<h1>View Books</h1>
		<br>
		<c:if test="${empty books}">
			<p>No books found</p>
		</c:if>
		<c:if test="${not empty books}">
			<table border="1">
				<thead>
					<tr>
						<th>SL</th>
						<th>Name</th>
						<th>Description</th>
						<th>Price</th>
						<th>Category</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="book" items="${books}" varStatus="loop">
						<tr>
							<td>${loop.index + 1}</td>
							<td>${book.bookName}</td>
							<td>${book.bookDesc}</td>
							<td>${book.bookPrice}</td>
							<td>${book.category.catName}</td>
							<td><a
								href="<%= request.getContextPath() %>/edit-book/${book.bookId}">Edit</a>
								<a
								href="<%= request.getContextPath() %>/delete-book/${book.bookId}">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<br>
			<a href="<%=request.getContextPath()%>/add-book">Add New Book</a>
		</c:if>
	</div>
</body>
</html>
<%@ include file="FooterContent.jsp"%>
