<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
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
        
        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        
        h2 {
            text-align: center;
            color: #333;
        }
        
        label {
            font-weight: bold;
            color: #555;
        }
        
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ddd;
            border-radius: 3px;
            box-sizing: border-box;
        }
        
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #303030;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        
        input[type="submit"]:hover {
            background-color: #2d2e2d;
        }
    </style>
</head>
<body>
    <div style="margin-top: 6%;">
        <form action="LoginServlet" method="post">
        
            <h2>Admin Login</h2>
            
            <label for="username">Username:</label><br>
            <input type="text" id="username" name="username"><br>
            <label for="password">Password:</label><br>
            <input type="password" id="password" name="password"><br><br>
            
          
            
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
