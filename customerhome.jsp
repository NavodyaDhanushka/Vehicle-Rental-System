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

    ul {
        margin: 0;
        padding: 0;
        list-style: none;
        display: flex;
        gap: 20px;
    }

    li a {
        color: white;
        font-size: 18px;
        font-weight: bold;
        padding: 8px 12px;
        transition: background 0.3s, color 0.3s;
    }

    li a:hover {
        background: #555;
        border-radius: 4px;
    }

    form input[type="submit"] {
        background-color: #f00;
        border: none;
        color: white;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        padding: 8px 12px;
        border-radius: 4px;
        transition: background 0.3s;
    }

    form input[type="submit"]:hover {
        background-color: #c00;
    }

    h2 {
        margin-top: 20px;
    }

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
    
    .link1 {
        padding-left: 30px;
        padding-right: 30px;   
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
    
    .image1, .image2 {
        width: 100%;
        height: 100%;
    }

    #nav1 {
        z-index: 1000;
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
  <%
    // Check if the user role cookie exists
    Cookie[] cookies = request.getCookies();
    boolean roleCookieExists = false;
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("user_role")) {
                roleCookieExists = true;
                break;
            }
        }
    }
    
    // If the user role cookie doesn't exist, redirect to login.jsp
    if (!roleCookieExists) {
        response.sendRedirect("login.jsp");
    }
%>

 <nav class="navbar">
    <div class="navdiv">
        <div class="logo">
            <img src="image/rentigologo.png" alt="Rentigo Logo">
        </div>
        <ul>
            <li><a href="customerhome.jsp">Home</a></li>
            <li class="link1"><a href="feedback_form.jsp">Add Feedback</a></li>
            <li><a href="DisplayServlet2">Vehicles</a></li>
            <li>
                <form action="logout" method="post">
                    <input type="submit" value="Logout">
                </form>
            </li>
        </ul>
    </div>
</nav>

<h2>Hello,</h2>

<div class="image1">
    <img class="photo5" src="image/car set.png"><br>
</div> 

<a href="DisplayServlet">
    <div class="image2">
        <img class="photo3" src="image/rent-a-car.png">   
    </div> 
</a>

<footer>
    <div class="container">
        <div class="footer-content">
            <h3>Contact Us</h3>
            <p>Email: mysliit@sliit.lk</p>
            <p>Phone: +94 124567897</p>
            <p>Address: SLIIT Kandy, Peradeniya Rd</p>
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
                <li><a href="#" class="fa fa-facebook"></a></li>
                <li><a href="#" class="fa fa-twitter"></a></li>
                <li><a href="#" class="fa fa-linkedin"></a></li>
                <li><a href="#" class="fa fa-youtube"></a></li>
            </ul>
        </div>
    </div>
    <div class="bottom-bar">
        <p>&copy; OOP project group 1 weekend batch</p>
    </div>
</footer>

</body> 
</html>
