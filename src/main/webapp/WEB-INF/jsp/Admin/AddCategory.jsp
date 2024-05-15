<%@ include file="HeaderContent.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Category</title>
<link href="<%= request.getContextPath() %>/css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="center">
 <h1>Add Category</h1>
    <form action="/save-cat" method="post">
        <table>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="catName"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <button type="submit"><span></span>SAVE</button>
                    <a href="/home">Cancel</a>
                </td>
            </tr>
        </table>
    </form>
    </div>

</body>
</html>
<%@ include file="FooterContent.jsp"%>