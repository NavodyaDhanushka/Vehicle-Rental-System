<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
    /* CSS styles */
    * {
        text-decoration: none;
    }

    body {
        background-color: rgb(208, 208, 208);
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
    }

     .navbar {
        background: #333;
        font-family: Calibri, sans-serif;
        padding: 15px 20px;
        position: sticky;
        top: 0;
        width: 100%;
        z-index: 1000;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
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
        text-decoration: none; /* Added */
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

    h2 {
        margin-top: 20px;
    }

    /* Image container styles */
    .image1, .image2 {
        display: flex;
        align-items: center;
        justify-content: center;
        margin-top: 20px;
    }

    .image2 img {
        max-width: 200px;
        max-height: 200px;
    }

    /* Footer styles */
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
    
    /* Image sizes and positions */
    .image1, .image2 {
        width: 100%;
        height: 100%;
    }

    .photo5 {
        width: 1100px;
        height: 600px;
        margin-top: -15%;
    }

    .photo3 {
        width: 900px;
        height: 600px;
        margin-top: 0%;
    }
</style>
</head>

<body>
    <!-- Navigation bar -->
    <nav class="navbar">
        <div class="navdiv">
            <!-- Logo -->
            <div class="logo">
                <a href="Adminhome.jsp"><img src="image/rentigologo.png" alt="Rentigo Logo"></a> <!-- Wrapped in <a> tag -->
            </div>
            <!-- Navigation links -->
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

    <!-- Greeting -->
    <h2>Hello admin,</h2>

    <!-- Image section 1 -->
    <div class="image1">
        <img class="photo5" src="image/car set.png">
    </div>

    <!-- Image section 2 -->
    <a href="DisplayServlet">
        <div class="image2">
            <img class="photo3" src="image/rent-a-car.png">
        </div>
    </a>

    <!-- Footer -->
    <footer>
        <div class="container">
            <!-- Contact information -->
            <div class="footer-content">
                <h3>Contact Us</h3>
                <p>Email: mysliit@sliit.lk</p>
                <p>Phone: +94 124567897</p>
                <p>Address: SLIIT Kandy, Peradeniya Rd</p>
            </div>
            <!-- Quick links -->
            <div class="footer-content">
                <h3>Quick Links</h3>
                <ul class="list">
                    <li><a href="customerhome.jsp">Home</a></li><br>
                    <li><a href="#">About</a></li><br>
                    <li><a href="#">Feedback</a></li>
                </ul>
            </div>
            <!-- Social media icons -->
            <div class="footer-content">
                <h3>Follow Us</h3>
                <ul class="social-icons">
                    <li><a href="#" class="fa fa-facebook"></a></li>
                    <li><a href="#" class="fa fa-twitter"></a></li>
                    <li><a href="#" class="fa fa-linkedin"></a></li>
                    <li><a href="#" class="fa fa-youtube"></a></li>
                </ul>
            </div>
        </div>
        <!-- Bottom bar -->
        <div class="bottom-bar">
            <p>&copy; OOP project group 1 weekend batch</p>
        </div>
    </footer>
</body>
</html>
