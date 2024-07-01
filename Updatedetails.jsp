<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
    * {
        text-decoration: none;
    }

    .navbar {
        background: #5e5e5e;
        font-family: calibri;
        padding: 15px;
    }

    .navdiv {
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .logo img {
        max-width: 150px;
        max-height: 50px;
    }

    .logo a {
        font-size: 35px;
        font-weight: 600;
        color: white;
    }

    ul {
        margin: 0;
        padding: 0;
        list-style: none;
    }

    li {
        display: inline-block;
        margin-right: 20px;
    }

    li a {
        color: white;
        font-size: 18px;
        font-weight: bold;
    }

    button {
        background-color: black;
        border-radius: 10px;
        padding: 10px 20px;
        border: none;
        color: white;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
    }

    button a {
        color: white;
        text-decoration: none;
    }
</style>
	
	
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        padding: 20px;
    }

    h2 {
        color: #333;
    }

    form {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        width: 800px;
        
        margin: 0 auto;
    }

    label {
        display: block;
        margin-bottom: 5px;
        color: #555;
    }

    input[type="text"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: black;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
    }

    input[type="submit"]:hover {
        background-color: #d32f2f;
    }
</style>
	<script>
    function showPopup() {
        alert("Vehicle information Updated successfully!");
    }
</script>

<%--footer css --%>
	
	<style>
   
    footer {
    background: #343434;
    padding: 50px 0;
    color: white;
}

.container {
    display: flex;
    justify-content: space-between;
    max-width: 1140px;
    margin: auto;
    padding: 0 20px;
}

.footer-content {
    flex: 1;
    text-align: center;
}

h3 {
    font-size: 24px;
    margin-bottom: 20px;
}

.footer-content p {
    margin: 10px 0;
}

.list li {
    margin-bottom: 10px;
}

.social-icons a {
    display: inline-block;
    margin: 0 5px;
    color: white;
    font-size: 20px;
}

.social-icons a:hover {
    color: #ccc;
}

.bottom-bar {
    background: #ccc;
    padding: 20px 0;
    text-align: center;
}

.bottom-bar p {
    margin: 0;
    font-size: 14px;
}

    
</style>


<body>

<nav class="navbar">
		<div class="navdiv">
			<div class="logo">
        <img src="image/rentigologo.png" alt="Rentigo Logo">
    </a>
</div>
			<ul>
				<li><a href="Adminhome.jsp">Home</a></li>
				<li><a href="AddVform.jsp">Add Vehicle</a></li>
				<li><a href="Adminfeed.jsp">Feedback</a></li>
				<li><a href="DisplayServlet">Vehicle List</a></li>
				

			</ul>
		</div>
	</nav>

<h2>Vehicle Information Update</h2>
<BR>

		<%
		String id = request.getParameter("id");
		String vehicleTtype = request.getParameter("vehicleTtype");
		String vehicleBrand = request.getParameter("vehicleBrand");
		String vehicleNum = request.getParameter("vehicleNum");
		String driverNIC = request.getParameter("driverNIC");
		String contact = request.getParameter("contact");
		String driverName = request.getParameter("driverName");
		String hrate = request.getParameter("hrate");
		
		%>
		
		
<form action="your-url-pattern" method="post"onsubmit="showPopup()">
	
		
		<label for="id">ID:</label><br>
        <input type="text" name="id" value="<%= id %>"readonly><br>
        
		<label for="vehicleTtype">Vehicle Type:</label><br>
        <input type="text" name="vehicleTtype" value="<%= vehicleTtype %>"><br>

        <label for="vehicleBrand">Vehicle Brand:</label><br>
        <input type="text" name="vehicleBrand" value="<%= vehicleBrand%>"><br>

        <label for="vehicleNum">Vehicle Number:</label><br>
        <input type="text" name="vehicleNum" value="<%= vehicleNum%>"><br>

        <label for="driverNIC">Driver NIC:</label><br>
        <input type="text" name="driverNIC" value="<%=driverNIC%>"><br>

        <label for="contact">Contact:</label><br>
        <input type="text" name="contact" value="<%=contact%>"><br>

        <label for="driverName">Driver Name:</label><br>
        <input type="text" name="driverName" value="<%=driverName%>"><br>
        
        <label for="hrate">Hourly Rate:</label><br>
        <input type="text" name="hrate" value="<%=hrate%>"><br><br>

        <input type="submit" value="Update">

</form>

<%--footer html --%>

<footer>
        <div class="container">
            <div class="footer-content">
                <h3>Contact Us</h3>
                <p>Email:mysliit@sliit.lk</p>
                <p>Phone:+94 124567897</p>
                <p>Address:sliit kandy,peradeniya rd,</p>
            </div>
            <div class="footer-content">
                <h3>Quick Links</h3>
                 <ul class="list">
                    <li><a href="customerhome.jsp">Home</a></li><br>
          
                <li><a href="#">About</a></li><br>
                <li><a href="#">Feedback</a></li>
                    
                 </ul>
            </div>
            <div class="footer-content">
                <h3>Follow Us</h3>
                <ul class="social-icons">
                 	<a href="#" class="fa fa-facebook"></a>
					<a href="#" class="fa fa-twitter"></a>
					<a href="#" class="fa fa-linkedin"></a>
					<a href="#" class="fa fa-youtube"></a>
                </ul>
                </div>
        </div>
        <div class="bottom-bar">
            <p>&copy; OOP project group 1 weekend batch</p>
        </div>
    </footer>
    



</body>
</html>