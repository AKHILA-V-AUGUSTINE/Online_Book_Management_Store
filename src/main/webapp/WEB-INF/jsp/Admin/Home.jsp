<%@ include file="Header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<link href="css/styles.css"  rel="stylesheet" type="text/css" />
<meta charset="ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
<div class="content">
	<div style="text-align: center;">
		<h1>HOME</h1>

		<button name="add_usr" onclick="location.href='addUsers';">
			<span></span>Add Users
		</button>
		<button name="view_usr" onclick="location.href='/view-users';">
			<span></span>View Users
		</button>
		<button name="add_prod_cat"
			onclick="location.href='add-cat';">
			<span></span>Add Category
		</button>
		<button name="view_prod_cat"
			onclick="location.href='view-cat';">
			<span></span>View Category
		</button>
		<button name="add_prod" onclick="location.href='add-book';">
			<span></span>Add Book
		</button>
		<button name="view_prod" onclick="location.href='/view-book';">
			<span></span>View Books
		</button>
		<!-- <button name="logout_usr" onclick="location.href='Logout.jsp';"><span></span>Logout
		</button> -->
	</div>
	</div>

</body>
</html>
<%@ include file="Footer.jsp"%>