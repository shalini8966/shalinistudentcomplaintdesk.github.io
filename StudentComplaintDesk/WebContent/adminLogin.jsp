<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="Login.css" rel="stylesheet" type="text/css">

<title>Admin Login</title>
</head>
<body>
	<header>
		<!-- including navigation -->
		<%@ include file="nav.html"%>
	</header >
	<section>
		<center>
			<div class="login">
				<header class="heading">
					<h1>Admin Login</h1>
				</header>
				<form action="adminServlet" method="post">
					<table>
						<tr>
							<td>UserName</td>
							<td><input type="text" name="username"
								placeholder=" Enter UserName" /></td>
						<tr>
						<tr>
							<td>Password</td>
							<td><input type="password" name="password"
								placeholder=" Enter password" /></td>
						</tr>
					</table>
					<input type="submit" value="Login" /> <br>
				</form>
			</div>
		</center>
	</section>
</body>
</html>