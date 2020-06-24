<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<title>Admin View</title>

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
				<header class="query-Heading">Welcome <%= session.getAttribute("uid") %></header>
			</div>
			<table border="1" class="view">
				<tr>
					<th class="he">Complain ID</th>
					<th class="he">Category</th>
					<th class="he">Description</th>
					<th class="he">Action</th>
				</tr>
				<%
					Class.forName("com.mysql.jdbc.Driver");

					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/complaint", "root", "");

					Statement statement = con.createStatement();
					ResultSet x = statement.executeQuery("select * from `complain`");

					while (x.next()) {
				%>
				<tr>
					<td class="col"><%=x.getInt(1)%></td>
					<td class="col"><%=x.getString(2)%></td>
					<td class="col"><%=x.getString(3)%></td>
					<td class="col"><div class = "col-div"><a class = "col-a" href="delete.jsp?q=<%= x.getString(1) %>"> Delete </a></div>
				</tr>
				
				
		
				<%
					}
				%>
			</table>
		</center>

	</section>

</body>
</html>