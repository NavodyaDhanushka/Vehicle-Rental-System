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

<script>
    function showPopup() {
        alert("Vehicle information submitted successfully!");
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



</head>
<body>

<nav class="navbar">
    <div class="navdiv">
        <div class="logo">
            <img src="image/rentigologo.png" alt="Rentigo Logo">
        </div>
        <ul>
        <li><a href="#">Add Feedback</a></li>
				<li><a href="DisplayServlet2">Vehicles</a></li>
            <li><form action="logout" method="post">
    <input type="submit" value="Logout">
        </ul>
    </div>
</nav>

<br>
<br>


<br>


    
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
