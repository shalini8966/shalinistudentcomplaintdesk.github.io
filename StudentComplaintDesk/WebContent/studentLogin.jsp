<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="ISO-8859-1">

<title>Login</title>

<link href="Login.css" rel="stylesheet" type="text/css">
<link href="query.css" rel="stylesheet" type="text/css">

</head>

<body>

	<header>

		<!-- including navigation -->
		<%@ include file="nav.html"%>

	</header>

	<section>

		<center>

			<div class="login">

				<header class="heading">
					<h1>Student Login</h1>
				</header>

				<div class="submit">
					<%
						if (request.getParameter("s") != null)
							out.print(request.getParameter("s"));
					%>
				</div>

				<form action="LoginServlet" method="post">
				
					<table>
					
						<tr>
							<td>UserName</td>
							<td><input type="text" name="username"
								placeholder=" Enter UserName" /></td>
						</tr>
						
						<tr>
							<td>Password</td>
							<td><input type="password" name="password"
								placeholder=" Enter password" /></td>
						</tr>
						
					</table>
					
					<input type="submit" value="Submit" /><br>
					
				</form>
				
				<p class="new">
					New Student ? <a href="studentRegister.jsp">Register here</a>
				</p>
				
			</div>
			
		</center>
		
	</section>

</body>

</html>