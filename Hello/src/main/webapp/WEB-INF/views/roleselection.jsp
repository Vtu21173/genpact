<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Role Selection</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            user-select: none;
            position: relative;
            background-image: url('money-2724241_1280.jpeg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            color: white;
        }

        .header-strip {
            background-color: rgba(238, 225, 225, 0.5); /* Semi-transparent light background */
            padding: 10px 20px;
            text-align: left;
            color: green;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: rgba(238, 225, 225, 0.8); /* Semi-transparent light background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #092635; /* Dark blue text color */
        }

        .welcome-message {
            font-style: italic;
            font-size: 18px;
            margin-bottom: 20px;
        }

        .caption {
            font-size: 20px;
            color: #555;
            margin-bottom: 10px;
        }

        .role-selection {
            display: flex;
            justify-content: center;
            margin-bottom: 30px;
        }

        .role {
            margin: 0 10px;
        }

        .role-image {
            width: 120px;
            height: auto;
            margin-bottom: 20px;
        }

        button {
            padding: 10px 20px;
            font-size: 14px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            background-color: #092635;
            color: white;
            text-decoration: none; /* Remove underline */
            transition: background-color 0.3s ease, color 0.3s ease, font-size 0.3s ease, font-weight 0.3s ease;
        }

        button:hover {
            background-color: #3498db; /* Darker blue color on hover */
            color: white;
            font-size: 18px;
            font-weight: bold;
        }

        button a {
            text-decoration: none;
            color: white; /* White text color for links */
        }

        .footer {
            text-align: center;
            margin-top: 30px;
        }

        p {
            text-align: center;
            color: #092635;
            animation: blink 1s infinite alternate; /* Add blinking animation */
        }

        @keyframes blink {
            0% {
                opacity: 1;
            }
            100% {
                opacity: 0;
            }
        }
    </style>
</head>
<body>
    <div class="header-strip">
        <h1>VelTech InfiniBank</h1>
    </div>
    <div class="container">
        <div class="welcome-section">
            <h2>Welcome</h2>
            <p class="welcome-message">Effortless Transactions - Every time - Every Where</p>
            <p class="caption">Please select your role:</p>
        </div>
        <div class="role-selection">
            <div class="role">
                <img src="download.jpeg" alt="Admin" class="role-image">
                <button><a href="<%= request.getContextPath() %>/AdminLoginServlet">Admin</a></button>
            </div>
            <div class="role">
                <img src="images.jpeg" alt="Customer" class="role-image">
                <button><a href="<%= request.getContextPath() %>/LoginServlet">Customer</a></button>
            </div>
        </div>
    </div>
</body>
</html>
