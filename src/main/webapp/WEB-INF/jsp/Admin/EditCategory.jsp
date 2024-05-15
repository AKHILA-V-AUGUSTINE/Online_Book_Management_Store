<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="HeaderContent.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Category</title>
<link href="<%= request.getContextPath() %>/css/styles.css" rel="stylesheet" type="text/css" />
<style>
/* Add custom styles here */
form {
	text-align: center;
	margin-top: 30px;
}
</style>
</head>
<body>
<div class="center">
 <h1>Edit Category</h1><br>
    <form action="${pageContext.request.contextPath}/update-cat/${categoryEntity.catId}" method="post">
    <input type="hidden" name="userId" value="${categoryEntity.catId}" />
       <table>
            <tr>
                <td>Category ID:</td>
                <td><input type="text" name="catId" value="${categoryEntity.catId}" readonly></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="catName" value="${categoryEntity.catName}"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit" name="edit_submit"><span></span>UPDATE</button>
                    <a href="${pageContext.request.contextPath}/view-cat">Cancel</a>
                </td>
            </tr>
        </table>
    </form>
    </div>
</body>
</html>
<%@ include file="FooterContent.jsp"%>