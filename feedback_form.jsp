<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Feedback</title>
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

        form {
            max-width: 500px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-size: 22px;
            font-weight: bold;
        }

        input[type="number"],
        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #000; 
            border-radius: 5px;
            margin-bottom: 20px;
            box-sizing: border-box;
            color: #000; 
            font-size: 20px;
        }

        textarea {
            height: 120px;
            resize: none;
        }

        button[type="submit"] {
            background-color: #000; 
            color: #fff; 
            border: none;
            padding: 12px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 20px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        button[type="submit"]:hover {
            background-color: #333; 
        }
        
        .navbar {
    background-color:#5e5e5e;
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
    background-color:#000;
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
        <div class="navbar-logo">
            Rentigo
        </div>
        <ul class="navbar-links">
            <li><a href="customerhome.jsp">Home</a></li>
            <li><a href="#">Book</a></li>
            <li><a href="#">View</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">Login</a></li>
        </ul>
 </nav>

    <h1>Add Feedback</h1>
    <form action="insert" method="post">
    
        <label for="UserName">UserName:</label>
        <input type="text" id="UserName" name="UserName" required>
        <label for="carId">Car ID:</label>
        <input type="text" id="carId" name="carId" required>
        <label for="brand">Vehicle Brand:</label>
        <input type="text" id="brand" name="brand" required>
        <label for="model">Vehicle Model:</label>
        <input type="text" id="model" name="model" required>
        <label for="comment">Comment:</label>
        <textarea id="comment" name="comment" required></textarea>
        
        <button type="submit">SubmitFeedback</button>
    </form>
    
<div class="footer">
    <p>Contact Us: support@vehiclerentalsystem.com | Phone: +123456789</p>
    <p>Address: 123 Main Street, City, Country</p>
    <p>Follow us on <a href="#">Facebook</a>, <a href="#">Twitter</a>, and <a href="#">Instagram</a></p>
    <p>&copy; 2024 Vehicle Rental System</p>
</div>
</body>
</html>
