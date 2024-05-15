<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User View Books</title>
<link href="<%=request.getContextPath()%>/css/styleuser.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="container">
		<h1>Available Books</h1>
		<c:forEach var="book" items="${books}">
			<div class="wrapper">
				<div class="banner-image">
					<c:choose>
						<c:when test="${book.bookId % 3 == 0}">
							<img src="<%=request.getContextPath()%>/img/books1.jpg"
								alt="${book.bookName}" />
						</c:when>
						<c:when test="${book.bookId % 3 == 1}">
							<img src="<%=request.getContextPath()%>/img/books2.jpg"
								alt="${book.bookName}" />
						</c:when>
						<c:otherwise>
							<img src="<%=request.getContextPath()%>/img/books3.jpg"
								alt="${book.bookName}" />
						</c:otherwise>
					</c:choose>
				</div>
				<h2>${book.bookName}</h2>
				<h3>Category: ${book.category.catName}</h3>
				<!-- Assuming category has a categoryName field -->
				<p>${book.bookDesc}</p>
				<p>Price: ${book.bookPrice}</p>
				<div class="button-wrapper">
					<button class="btn outline">DETAILS</button>
					<button class="btn fill">BUY NOW</button>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>