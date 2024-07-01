<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    input[type="submit"] {
        background-color: black;
        color: white;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
        border-radius: 5px;
    }
    input[type="text"],
    input[type="password"] {
        margin-bottom: 10px;
        padding: 5px;
        border-radius: 3px;
        border: 1px solid #ccc;
    }
    .form-container {
        border: 2px solid #ccc;
        padding: 20px;
        width: 300px;
        margin: 0 auto;
    }
    html, body {
        height: 100%;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }
</style>
</head>
<body>
    <div class="form-container">
        <form action="create" method="post">
            Name <input type="text" name="name"><br>
            Email <input type="text" name="email"><br>
            Phone Number <input type="text" name="phone"><br>
            User Name <input type="text" name="username"><br>
            Password <input type="password" name="password"><br>
            <input type="submit" name="submit" value="Create Account">
        </form>
    </div>
</body>
</html>
