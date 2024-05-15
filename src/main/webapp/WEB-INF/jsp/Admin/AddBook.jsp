<%@ include file="HeaderContent.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Books</title>
<link href="<%=request.getContextPath()%>/css/styles.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="center">
		<h2>Add Book</h2>
		<form action="${pageContext.request.contextPath}/save-book"
			method="post">
			<label for="bookName">Book Name:</label> <input type="text"
				id="bookName" name="bookName"><br>
			<br> <label for="bookDesc">Description:</label>
			<textarea id="bookDesc" name="bookDesc" maxlength="1000"></textarea>
			<br>
			<br> <label for="bookPrice">Price:</label> <input type="text"
				id="bookPrice" name="bookPrice"><br>
			<br> <label for="category">Category:</label> <select
				id="category" name="category">
				<c:forEach items="${categories}" var="category">
					<option value="${category.catId}">${category.catName}</option>
				</c:forEach>
			</select><br>
			<br> <button type="submit"><span></span>ADD BOOK</button>
		</form>
	</div>
</body>
</html>
<%@ include file="FooterContent.jsp"%>