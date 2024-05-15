<%@ include file="HeaderContent.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit User</title>
<link href="<%= request.getContextPath() %>/css/stylelogin.css" rel="stylesheet" type="text/css" />
<style>
/* Add custom styles here */
form {
	text-align: center;
	margin-top: 30px;
}

table {
	margin: auto;
}

td {
	padding: 10px;
	text-align: right;
}

label, h1 {
	color: #B1DDF1;
}

input[type="submit"] {
	color: #fff;
}

a {
	color: #B1DDF1;
}

a:hover {
	color: #50C878; /* Change the color of the link on hover */
}

button {
	color: #50C878;
}
</style>
<script>
	function validateformEdit() {
		console.log("validation function");//debug check

		var name = document.getElementsByName("userName")[0].value.trim();
		var contact = document.getElementsByName("userContact")[0].value.trim();
		var username = document.getElementsByName("userUsername")[0].value
				.trim();
		var password = document.getElementsByName("userPassword")[0].value
				.trim();
		var category = document.getElementsByName("userRole")[0].value.trim();

		if (name == null || name == "") {
			alert("Name Can't be blank or number");
			return false;
		} else if (/\d/.test(name)) {
			alert("Name Can't be a number");
			return false;
		} else if (contact == null || contact == "") {
			alert("Please enter the phone number");
			return false;
		} else if (!/^\d{10}$/.test(contact)) {
			alert("Contact Number must be a 10-digit number");
			return false;
		} else if (username == null || username == "") {
			alert("Please enter the username");
			return false;
		} else if (/\d/.test(username)) {
			alert("UserName Can't be a number");
			return false;
		} else if (password == null || password == "") {
			alert("Please enter the password");
			return false;
		} else if (password.length < 6) {
			alert("Password length must be >=6");
			return false;
		} else if (category == "") {
			alert("Please choose the category");
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<div style='text-align: center;'>
		<form name="editUser" method="post" action="/save-user"
			modelAttribute="userEntity" onsubmit="return validateformEdit()">
			<h1>Edit User</h1>
			<table>
				<input type="hidden" name="userId" value="${user.userId}" />
				<tr>
					<td><label>Name:</label></td>
					<td><input type="text" name="userName" id="userName"
						value="${user.userName}" /></td>
				</tr>
				<tr>
					<td><label>Contact number:</label></td>
					<td><input type="number" name="userContact" id="userContact"
						value="${user.userContact}" /></td>
				</tr>
				<tr>
					<td><label>Email:</label></td>
					<td><input type="email" name="userEmail" id="userEmail"
						value="${user.userEmail}" readonly /></td>
				</tr>
				<tr>
					<td><label>Username:</label></td>
					<td><input type="text" name="userUsername" id="userUsername"
						value="${user.userUsername}" /></td>
				</tr>
				<tr>
					<td><label>Password:</label></td>
					<td><input type="text" name="userPassword" id="userPassword"
						value="${user.userPassword}" readonly /></td>
				</tr>
				<tr>
					<td><label>Role:</label></td>
					<td><select name="userRole">
							<option ${user.userRole == 'STAFF' ? 'selected' : ''}>STAFF</option>
							<option ${user.userRole == 'USER' ? 'selected' : ''}>USER</option>
					</select></td>
				</tr>
			</table>
			<br>
			<button type="submit" name="edit_submit">
				<span></span>SAVE CHANGES
			</button>
		</form>
	</div>
</body>
</html>
<%@ include file="FooterContent.jsp"%>
