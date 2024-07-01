<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vehicle Details</title>
<style>

body {
  background-color: rgb(208, 208, 208);
}

    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }
    h2 {
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        padding: 8px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #ddd;
    }
    a.button {
        background-color: #888686;
        border: none;
        color: white;
        padding: 8px 14px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        border-radius: 4px;
        cursor: pointer;
    }
    a.button:hover {
        background-color: #393535;
    }
    input[type="submit"] {
        background-color: #888686;
        border: none;
        color: white;
        padding: 8px 14px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        border-radius: 4px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #d32f2f;
    }
</style>



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
</head>
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
				
				
				
				 <li><form action="logout" method="post">
    <input type="submit" value="Logout">
</form></li>
			</ul>
			
			
		</div>
	</nav>
	

 
    <h1>Vehicle Details</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Vehicle Type</th>
            <th>Vehicle Brand</th>
            <th>Vehicle Number</th>
            <th>Driver NIC</th>
            <th>Contact</th>
            <th>Driver Name</th>
            <th>Hourly Rate</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="vehicle" items="${vehicleDetails}">
        
        <c:set var="id" value="${vehicle.id}"/>
        <c:set var="vehicleTtype" value="${vehicle.vehicleTtype}"/>
        <c:set var="vehicleBrand" value="${vehicle.vehicleBrand}"/>
        <c:set var="vehicleNum" value="${vehicle.vehicleNum}"/>
        <c:set var="driverNIC" value="${vehicle.driverNIC}"/>
        <c:set var="contact" value="${vehicle.contact}"/>
        <c:set var="driverName" value="${vehicle.driverName}"/>
        <c:set var="hrate" value="${vehicle.hrate}"/>
        
        
            <tr>
                <td>${vehicle.id}</td>
                <td>${vehicle.vehicleTtype}</td>
                <td>${vehicle.vehicleBrand}</td>
                <td>${vehicle.vehicleNum}</td>
                <td>${vehicle.driverNIC}</td>
                <td>${vehicle.contact}</td>
                <td>${vehicle.driverName}</td>
                <td>${vehicle.hrate}</td>
                
                <td>
                    <!-- Update Button -->
                    
                     <c:url value="Updatedetails.jsp" var="Update">
                     <c:param name="id" value="${id}"/>
                     <c:param name="vehicleTtype" value="${vehicleTtype}"/>
                     <c:param name="vehicleBrand" value="${vehicleBrand}"/>
                     <c:param name="vehicleNum" value="${vehicleNum}"/>
                     <c:param name="driverNIC" value="${driverNIC}"/>
                     <c:param name="contact" value="${contact}"/>
                     <c:param name="driverName" value="${driverName}"/>
                      <c:param name="hrate" value="${hrate}"/>
                           
                     </c:url>
                     
                     <a href="${Update}">   
                     <input name="id" type="submit" value="Update">               
                    </a>  
                    
                    
                    <!-- Delete Button -->
                   
             
                    
                    <form action="deleteVehicle" method="post" style="display: inline;" onsubmit="showPopup()">
                        <input type="hidden" name="id" value="${vehicle.id}">
                        <input type="submit" value="Delete">
                    </form>
                </td>
            </tr>
        </c:forEach>    
    </table>
    <br>
    <br>
    <br>
    
   <script>
        function showPopup() {
            
            var confirmation = confirm("Are you sure you want to delete this vehicle?");
            return confirmation;
        }
    </script>
    
    
   
    
    
    <br>
    <br>

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
                 <li><a href=""><i class="fab fa-facebook"></i></a></li>
                 <li><a href=""><i class="fab fa-twitter"></i></a></li>
                 <li><a href=""><i class="fab fa-instagram"></i></a></li>
                 <li><a href=""><i class="fab fa-linkedin"></i></a></li>
                </ul>
                </div>
        </div>
        <div class="bottom-bar">
            <p>&copy; OOP project group 1 weekend batch</p>
        </div>
    </footer>
    
    
</body>
</html>
