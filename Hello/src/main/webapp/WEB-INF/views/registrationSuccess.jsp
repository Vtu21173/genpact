<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration Success</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f5f5f5; /* Light gray background */
            color: #333;
            margin: 0;
        }

        .container {
            text-align: center;
            background-color: #fff; /* White background for container */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1); /* Soft shadow */
        }

        h1 {
            color: #2c3e50; /* Dark blue text color */
            font-size: 36px;
            margin-bottom: 20px;
        }

        p {
            margin-top: 15px;
            font-size: 18px;
        }

        p span {
            font-weight: bold;
            color: #2980b9; /* Blue color for account number and password */
        }

        .back-btn {
            padding: 10px 20px;
            background-color: #3498db; /* Blue background color */
            color: #fff; /* White text color */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
            margin-top: 30px;
            display: inline-block;
        }

        .back-btn:hover {
            background-color: #2980b9; /* Darker blue color on hover */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registration Successful!</h1>
        <p>Your account number: <span>${ac}</span></p>
        <p>Your password: <span>${pass}</span></p>
        <a href="<%= request.getContextPath() %>/LoginServlet" class="back-btn">Login Now</a>
    </div>
</body>
</html>
