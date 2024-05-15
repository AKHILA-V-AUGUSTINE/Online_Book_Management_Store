<!DOCTYPE html>
<html>
<head>

<title>HeaderContent</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="<%= request.getContextPath() %>/css/stylecontent.css" rel="stylesheet" type="text/css" />
<!-- <script language="javascript">
	document.onmousedown = disableclick;
	status = "Welcome to Demo Project";
	function disableclick(event) {
		if (event.button == 2) {
			alert(status);
			return false;
		}
	}
</script> -->

<!-- <script type="text/javascript">
	function preventBack() {
		window.history.forward();
	}
	setTimeout("preventBack()", 0);
	window.onunload = function() {
		null
	};
</script> -->
</head>
<body>
	<div class="banner">
		<div class="navbar">

			<ul>

				<li><a href="/user">Home</a></li>

				<li><a href="/contact">Whislist</a></li>
				<li><a href="/about">Cart</a></li>
				<li style="float: right"><a href="Logout">Logout</a></li>

			</ul>
		</div>
	</div>
</body>
</html>