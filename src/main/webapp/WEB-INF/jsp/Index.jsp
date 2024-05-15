<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<link rel="stylesheet" href="css/styleindex.css">
</head>

<body>
<div class="banner">
	<div class="navbar">
		<img src="img/logobook.jpg" class="logo">
		<ul>
			<li><a href="/about">About</a></li>
			<li><a href="${pageContext.request.contextPath}/Login">Sign in</a></li>
			<li><a href="${pageContext.request.contextPath}/Register">Register</a></li>
		</ul>
	</div>
<div class="content">
	<h1>READING BOOKS</h1>
	<p>change your habit,change your life</p>
	<div>
		<a href="${pageContext.request.contextPath}/Login">
		<button type="button"><span></span>LOGIN</button></a>
		<a href="${pageContext.request.contextPath}/Register">
		<button type="button"><span></span>REGISTER</button></a>
	</div>
</div>
</div>
	
</body>


</body>
</html>