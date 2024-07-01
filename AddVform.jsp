<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


</style>


<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    h2 {
        text-align: center;
        color: #333;
    }

    form {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    label {
        font-weight: bold;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0 20px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: black;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
    }

    input[type="submit"]:hover {
        background-color: #d32f2f;
    }
    
    body {
  background-color: rgb(208, 208, 208);
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

<%-- validation --%>
<script>
    function showPopup() {
        alert("Vehicle information submitted successfully!");
    }

    function validateNIC(nic) {
        const nicPattern = /^(?:\d{12}|\d{11}v)$/i;
        return nicPattern.test(nic);
    }

    function validateForm(event) {
        const nicInput = document.getElementById('driverNIC').value;
        if (!validateNIC(nicInput)) {
            alert("Invalid NIC. It must be 12 digits or 11 digits followed by the letter 'v'.");
            event.preventDefault();
        }
    }

    document.addEventListener("DOMContentLoaded", function() {
        const form = document.querySelector("form");
        form.addEventListener("submit", validateForm);
    });
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

</head>
<body>

<nav class="navbar">
    <div class="navdiv">
        <div class="logo">
            <img src="image/rentigologo.png" alt="Rentigo Logo">
        </div>
        <ul>
        <li><a href="Adminhome.jsp">Home</a></li>
            <li><a href="AddVform.jsp">Add Vehicle</a></li>
            <li><a href="Adminfeed.jsp">Feedback</a></li>
            <li><a href=DisplayServlet>Vehicle List</a></li>
            
            <button><a href="login.jsp">Logout</a></button>
        </ul>
    </div>
</nav>

<br>
<br>
<br>

<h2>Vehicle Information Form</h2>
<br>
    <form action="AddVehicle" method="post" onsubmit="showPopup()">
        

        <label for="vehicleTtype">Vehicle Type:</label><br>
        <input type="text" id="vehicleTtype" name="vehicleTtype" required><br>

        <label for="vehicleBrand">Vehicle Brand:</label><br>
        <input type="text" id="vehicleBrand" name="vehicleBrand" required><br>

        <label for="vehicleNum">Vehicle Number:</label><br>
        <input type="text" id="vehicleNum" name="vehicleNum" required><br>

        <label for="driverNIC">Driver NIC:</label><br>
        <input type="text" id="driverNIC" name="driverNIC" maxlength="12"><br>

        <label for="contact">Contact:</label><br>
        <input type="text" id="contact" name="contact" required><br>

        <label for="driverName">Driver Name:</label><br>
        <input type="text" id="driverName" name="driverName" required><br>

        <label for="hrate">Hourly Rate:</label><br>
        <input type="text" id="hrate" name="hrate"><br>
        
        <input type="submit" value="Submit">
    </form>
    
    <br>
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
            
            <%--methana wada n hadann one --%>
            
            
            
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
