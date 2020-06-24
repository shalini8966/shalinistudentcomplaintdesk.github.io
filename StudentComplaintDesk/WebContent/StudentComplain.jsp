<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<title>Student Complain</title>

<link href="Login.css" rel="stylesheet" type="text/css">
<link href="query.css" rel="stylesheet" type="text/css">

</head>

<body>
	<header>
		<!-- including navigation -->
		<%@ include file="logoutNav.html"%>
	</header>

	<section>

		<center>

			<div class="query">
				<header class="query-Heading">
					Welcome
					<%=session.getAttribute("uname")%>
					<br> Raise Your Complain here
				</header>
			</div>

			<div class="login">

				<header class="heading">
					<h1>Complain Form</h1>
				</header>
				<div class="submit">
					<%
						if (request.getParameter("s") != null)
							out.print(request.getParameter("s"));
					%>
				</div>
				<form action="ComplainServlet" method="post">

					<table style="padding: 20px">

						<tr>
							<td>Category</td>
							<td><select name="complain-category" class="select">
									<option value="selectcat" disabled selected>----Select Category----</option>
									<option value="Electricity">Electricity</option>
									<option value="cleaning">Hostel- Cleaning</option>
									<option value="staff">Mess Staff</option>
									<option value="class">Classroom</option>
									<option value="Lab">Lab</option>
									<option value="food">food</option>
									<option value="room">Hostel-room</option>
									<option value="other">other</option>
							</select></td>
						</tr>

						<tr>
							<td>Description</td>
							<td style="padding-top: 20px"><textarea rows="10" cols="40"
									placeholder="Write description about complain" name="desc"></textarea></td>
						</tr>

					</table>

					<input type="submit" value="Submit" />
				</form>

			</div>

		</center>

	</section>

</body>
</html>