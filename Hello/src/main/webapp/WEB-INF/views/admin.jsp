<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            user-select: none;
            position: relative;
        }
        
        body::after {
            content: '';
            position: relative;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url('admin-login.jpg');
            background-size: 100% 100%;
            background-position: center;
            background-repeat: no-repeat;
            opacity: 0.8; /* Adjust the opacity value */
            z-index: -1; /* Ensure it's behind other content */
        }
        
        .header-strip {
            padding: 10px 0;
            text-align: center;
            color: white;
            background-color: red;/* Dark blue background */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Shadow */
        }
        
        h1 {
            margin-left: 20px;
            margin-top: 0px;
            font-weight: bold;
        }
        
        h2 {
            text-align: center;
            color: black;
            margin-top: -100px; /* Initially hidden */
            opacity: 0;
            animation: slideIn 1s forwards; /* Slide in from top */
        }
        
        @keyframes slideIn {
            100% {
                margin-top: 0px;
                opacity: 1;
            }
        }
        
        form {
            width: 300px;
            background-color: rgba(255, 255, 255, 0.9); /* Light gray background */
            margin: 0 auto;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Shadow */
            margin-top: 50px;
            transition: background-color 0.3s ease, box-shadow 0.3s ease, border-radius 0.3s ease; /* Add transition effect */
        }
        
        form:hover {
            background-color: rgba(255, 255, 255, 1); /* Lighten background color on hover */
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2); /* Add shadow on hover */
            border-radius: 10px; /* Rounded corners on hover */
        }
        
        label {
            display: block;
            margin-bottom: 10px;
            color: black;
            font-weight: bold;
        }
        
        input[type="text"],
        input[type="password"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 20px;
            border: 2px solid #ccc; /* Light gray border */
            border-radius: 5px;
            transition: border-color 0.3s ease; /* Add transition effect */
        }
        
        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #007bff; /* Blue border color on focus */
        }
        
        input[type="text"]:hover,
        input[type="password"]:hover {
            border-color: #0056b3; /* Darker blue border color on hover */
        }
        
        button[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff; /* Blue button color */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease; /* Add transition effect */
        }
        
        button[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue background color on hover */
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="header-strip">
        <h1>Genpact Bank</h1>
    </div>

    <form action="<%= request.getContextPath() %>/AdminLoginServlet" method="post">
        <h2>Admin Login</h2>
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>

        <button type="submit">Login</button>
    </form>
</body>
</html>
