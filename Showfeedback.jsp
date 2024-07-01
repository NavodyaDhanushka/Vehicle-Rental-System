<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View Feedback</title>
<style>
         body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: rgb(208, 208, 208);
      
         }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        .feedback-item {
            margin-bottom: 20px;
            padding: 15px;
            background-color: #f9f9f9;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .label {
            font-weight: bold;
            color: #000;
            font-size: 22px;
            
        }

        .value {
            color: #333;
            font-size: 20px;
            
        }
        
        .action-buttons {
            text-align: Right;
            margin-top: 10px;
        }
        
        .action-buttons button {
            background-color: #4a4a4a; 
            color: #fff; 
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            font-size: 20px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
            margin-left: 10px;
        }

        .action-buttons button:hover {
            background-color:#000;
            color: #fff;
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
            <li><a href="#">Home</a></li>
            <li><a href="#">Book</a></li>
            <li><a href="#">View</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Contact</a></li>
            <li><a href="#">Login</a></li>
        </ul>
 </nav>
    
    <div class="container">
        <h1 style="text-align: center;">View Feedback</h1>
        
        <c:forEach var="feed" items="${FeedbackDetailList}">
            <div class="feedback-item">
                <div class="feedback-detail">
                    <p class="label">UserName:</p>
                    <p class="value">${feed.userName}</p> 
                </div>  
                <div class="feedback-detail">
                    <p class="label">Car ID:</p>
                    <p class="value">${feed.carId}</p>
                </div>
                <div class="feedback-detail">
                    <p class="label">Vehicle Brand:</p>
                    <p class="value">${feed.brand}</p> 
                </div>
                <div class="feedback-detail">
                    <p class="label">Vehicle Model:</p>
                    <p class="value">${feed.model}</p> 
                </div>
                <div class="feedback-detail">
                    <p class="label">Comment:</p>
                    <p class="value">${feed.comment}</p> 
                </div>
                
                <div class="action-buttons">
                    <c:url value="Updatefeedback.jsp" var="updateFeedbackURL">
                        <c:param name="f_id" value="${feed.f_id}"/>
                        <c:param name="UserName" value="${feed.userName}"/>  
                        <c:param name="carId" value="${feed.carId}"/>
                        <c:param name="brand" value="${feed.brand}"/>
                        <c:param name="model" value="${feed.model}"/>
                        <c:param name="comment" value="${feed.comment}"/>
                    </c:url>
                    <a href="${updateFeedbackURL}">
                        <button>Edit</button>
                    </a>
                    
                    <c:url value="deletefeedback.jsp" var="deleteFeedbackURL">
                        <c:param name="f_id" value="${feed.f_id}"/>
                        <c:param name="UserName" value="${feed.userName}"/>  
                        <c:param name="carId" value="${feed.carId}"/>
                        <c:param name="brand" value="${feed.brand}"/>
                        <c:param name="model" value="${feed.model}"/>
                        <c:param name="comment" value="${feed.comment}"/>
                    </c:url>
                    <a href="${deleteFeedbackURL}">
                        <button>Delete</button>
                    </a>
                     <c:url value="AddSuccess.jsp" var="saveFeedbackURL"></c:url>
                     <a href="${saveFeedbackURL}">
                         <button>Save</button>
                      </a>
                </div>
            </div>
            
        </c:forEach>
    </div>
    
 <div class="footer">
    <p>Contact Us: support@vehiclerentalsystem.com | Phone: +123456789</p>
    <p>Address: 123 Main Street, City, Country</p>
    <p>Follow us on <a href="#">Facebook</a>, <a href="#">Twitter</a>, and <a href="#">Instagram</a></p>
    <p>&copy; 2024 Vehicle Rental System</p>
</div>
   
</body>
</html>