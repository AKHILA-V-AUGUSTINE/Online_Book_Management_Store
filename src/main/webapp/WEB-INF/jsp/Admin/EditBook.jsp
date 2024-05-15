<%@ include file="HeaderContent.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Book</title>
<link href="<%= request.getContextPath() %>/css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="center">
<h2>Edit Book</h2>
    <form action="${pageContext.request.contextPath}/update-book/${bookEntity.bookId}" method="post">
        <input type="hidden" name="_method" value="PUT">
        
        <label for="bookName">Book Name:</label>
        <input type="text" id="bookName" name="bookName" value="${bookEntity.bookName}"><br><br>
        
        <label for="bookDesc">Description:</label>
        <textarea id="bookDesc" name="bookDesc">${bookEntity.bookDesc}</textarea><br><br>
        
        <label for="bookPrice">Price:</label>
        <input type="text" id="bookPrice" name="bookPrice" value="${bookEntity.bookPrice}"><br><br>
        
        <label for="category">Category:</label>
        <select id="category" name="category">
            <c:forEach items="${categories}" var="category">
                <option value="${category.catId}" ${category.catId == bookEntity.category.catId ? 'selected' : ''}>${category.catName}</option>
            </c:forEach>
        </select><br><br>
        
        <button type="submit"><span></span>UPDATE BOOK</button>
    </form>
</div>
</body>
</html>
<%@ include file="FooterContent.jsp"%>