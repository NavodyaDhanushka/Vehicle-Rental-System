<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*, javax.servlet.*, javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            background: url('image/car set.png') no-repeat center center fixed;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .logout-container {
            text-align: center;
            background-color: #fff;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .logout-container h2 {
            margin-top: 0;
        }
        .logout-container p {
            margin-bottom: 20px;
        }
        .login-button {
            padding: 10px 20px;
            background-color: #2f2f2f;
            color: #fff;
            text-decoration: none;
            border-radius: 4px;
        }
        .login-button:hover {
            background-color: #313131;
        }
    </style>
</head>
<body>
    <div class="logout-container">
        <h2>Logout</h2>
        <p>You have been logged out successfully.</p>
        <a href="login.jsp" class="login-button">Login Again</a>
    </div>
</body>
</html>
