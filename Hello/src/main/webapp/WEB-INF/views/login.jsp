<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            position: relative;
            background-color: #f2f2f2; /* Light gray background */
        }

        body::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url('cus-login.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            opacity: 0.1; /* Adjust opacity as needed */
            z-index: -1;
        }

        .header-strip {
            padding: 20px 0;
            text-align: center;
            color: #ffffff; /* White text color */
            background-color: #12147f; /* Dark blue background */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Light shadow */
        }

        h1 {
            margin: 0;
            font-size: 36px;
        }

        h2 {
            text-align: center;
            color: #ffffff; /* White text color */
            font-size: 28px;
            margin-top: 20px;
            opacity: 0;
            animation: fadeInDown 1s forwards;
        }

        @keyframes fadeInDown {
            100% {
                opacity: 1;
                margin-top: 0;
            }
        }

        form {
            width: 400px;
            margin: 20px auto;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            opacity: 0.9;
            animation: slideInUp 1s forwards;
        }

        @keyframes slideInUp {
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #333333; /* Dark gray text */
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #cccccc; /* Light gray border */
            border-radius: 4px;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #007bff; /* Blue border color on focus */
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff; /* Blue button color */
            color: #ffffff; /* White text color */
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        .password-links {
            text-align: center;
            margin-top: 10px;
        }

        .change-password {
            color: #007bff;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .change-password:hover {
            color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="header-strip">
        <h1>Genpact Bank</h1>
    </div>
    <h2>Customer Login</h2>
    <form action="<%= request.getContextPath() %>/LoginServlet" method="post">
        <label for="accountNumber">Account Number:</label>
        <input type="text" id="accountNumber" name="accountNumber" required><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>
        <input type="submit" value="Login"><br>
        <div class="password-links">
            <a class="change-password" href="ChangePasswordServlet">Change Password</a><br>
        </div>
    </form>
</body>
</html>
