<%@ include file="Header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<link href="css/styles.css"  rel="stylesheet" type="text/css" />
<meta charset="ISO-8859-1">
<title>User Page</title>
</head>
<body>
<div class="content">
	<div style="text-align: center;">
		<h1>WELCOME...</h1>
		<button name="add_prod" onclick="location.href='viewbooks';">
			<span></span>View Books
		</button>
		<button name="view_prod" onclick="location.href='/view-book';">
			<span></span>View Whislist
		</button>
		<button name="view_prod" onclick="location.href='/view-book';">
			<span></span>View Cart
		</button>
		<!-- <button name="logout_usr" onclick="location.href='Logout.jsp';"><span></span>Logout
		</button> -->
	</div>
	</div>

</body>
</html>
<%@ include file="Footer.jsp"%>