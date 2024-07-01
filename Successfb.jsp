<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Submitted</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff; /* Change background to white */
            color: #000; /* Change text color to black */
        }

        h1 {
            text-align: center;
            margin-top: 20px;
        }

        .container {
            max-width: 500px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        p {
            margin-bottom: 20px;
        }

        button {
            background-color: #000; /* Change background color to black */
            color: #fff; /* Change text color to white */
            border: none;
            padding: 12px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #333; /* Darken background color on hover */
        }
    </style>
</head>
<body>
    <h1>Feedback Submitted Successfully</h1>
    <div class="container">
        <p>Your feedback has been successfully submitted.</p>
        <p>Thank you for your valuable input!</p>
        <button>Edit Feedback</button>
    </div>
</body>
</html>
