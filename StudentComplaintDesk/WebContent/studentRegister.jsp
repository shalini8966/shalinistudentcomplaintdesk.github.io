<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link href="Login.css" rel="stylesheet" type="text/css">
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
					<h1>Student Register</h1>
				</header>
				<form action="RegisterServlet" method="post">
					<table style="padding: 20px">
						<tr>
							<td>UserName</td>
							<td><input type="text" name="userName"
								placeholder=" Enter Name" /></td>
						</tr>

						<tr>
							<td>Roll No</td>
							<td><input type="text" name="rollNo"
								placeholder=" Enter Roll No" /></td>
						</tr>

						<tr>
							<td>Email ID</td>
							<td><input type="text" name="emailId"
								placeholder=" Enter Email ID" /></td>
						</tr>

						<tr>
							<td>Password</td>
							<td><input type="password" name="password"
								placeholder=" Enter Password" /></td>
						</tr>

						<tr>
							<td>Hostel No</td>
							<td><input type="text" name="hostelNo"
								placeholder=" Enter Hostel No" /></td>
						</tr>

						<tr>
							<td>Course</td>
							<td><input type="text" name="course"
								placeholder=" Enter Course" /></td>
						</tr>

						<tr>
							<td>Gender</td>
							<td><input type="radio" name="gender" value="male">
								Male <input type="radio" name="gender" value="female">
								Female</td>
						</tr>
					</table>
					<input type="submit" value="Submit" />
				</form>
				<p class="new">
					Already Registered ? <a href="studentLogin.jsp">Login here</a>
				</p>
			</div>
		</center>
	</section>

</body>
</html>