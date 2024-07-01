<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Panel - Feedbacks</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: rgb(208, 208, 208);
	color: #000;
}

h1 {
	text-align: center;
	margin-top: 20px;
	font-size: 30px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	padding: 10px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #f5f5f5;
}

.delete-button {
	background-color: #ff0000;
	color: #fff;
	border: none;
	padding: 6px 12px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	cursor: pointer;
	border-radius: 5px;
	transition: background-color 0.3s;
}

.delete-button:hover {
	background-color: #cc0000;
}

.navbar {
	background-color: #5e5e5e;
	color: #fff;
	display: flex;
	justify-content: space-between;
	padding: 17px 17px;
	font-size: 24px
}

.navbar-logo {
	font-size: 30px;
}

.navbar-links {
	list-style-type: none;
	margin: 0;
	padding: 0;
	display: flex;
}

.navbar-links li {
	margin: 0 10px;
}

.navbar-links a {
	text-decoration: none;
	color: #fff;
}

.navbar a:hover {
	background-color: #000;
	color: #fff;
}

.footer {
	background-color: #5e5e5e;
	color: #fff;
	padding: 20px 0;
	text-align: center;
	margin-top: 20px;
}

.footer p {
	margin: 0;
	font-size: 14px;
}

.footer a {
	color: #fff;
	text-decoration: none;
}

.footer a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>

	<nav class="navbar">
		<div class="navbar-logo">Admin Panel</div>
		<ul class="navbar-links">
			<li><a href="Adminhome.jsp">Home</a></li>
			<li><a href="#">Feedbacks</a></li>
			<li><a href="#">Users</a></li>
			<li><a href="#">Settings</a></li>
			<li><a href="#">Logout</a></li>
		</ul>
	</nav>


<form action="AdminFeed" method ="get">
	<h1>Feedbacks</h1>
    <button>View</button> 
	<table>
		<tr>
		    <th>F_ID</th>
			<th>UserName</th>
			<th>Car ID</th>
			<th>Vehicle Brand</th>
			<th>Vehicle Model</th>
			<th>Comment</th>
			<th>Action</th>
		</tr>
		<c:forEach var="feedback" items="${feedbackDetailList}">
			<tr>
			    
			    <td>${feedback.f_id}</td>
			    <td>${feedback.userName}</td> 			
				<td>${feedback.carId}</td>
				<td>${feedback.brand}</td>
				<td>${feedback.model}</td>
				<td>${feedback.comment}</td>
				<td>
                <form action="delete-admin-feed" method="post" style="display: inline;" onsubmit="return confirmDeletion()">
                    <input type="hidden" name="id" value="${feedback.f_id}">
                    <input type="submit" value="Delete" class="delete-button">
                </form>
            </td>
			</tr>
		</c:forEach>
	</table>
 </form> 
	<div class="footer">
		<p>Contact Us: support@vehiclerentalsystem.com | Phone: +123456789</p>
		<p>Address: 123 Main Street, City, Country</p>
		<p>
			Follow us on <a href="#">Facebook</a>, <a href="#">Twitter</a>, and <a
				href="#">Instagram</a>
		</p>
		<p>&copy; 2024 Vehicle Rental System</p>
	</div>

</body>
</html>
