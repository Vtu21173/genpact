<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dashboard</title>
    <style>
        body {
            background-image: url('/onlinebank.jpg');
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            color: #ffffff;
        }
        
        h1 {
            text-align: center;
            color: #ff0000;
            animation: slide-in 1s ease;
        }
        
        form {
            text-align: center;
            margin-top: 20px;
        }
        
        input[type="submit"] {
            background-color: #ff0000;
            color: #ffffff;
            padding: 15px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease, font-size 0.3s ease, font-weight 0.3s ease;
            margin: 10px;
        }
        
        input[type="submit"]:hover {
            background-color: #1a1a1a;
            color: #ff0000;
            font-size: 18px;
            font-weight: bold;
        }
        
        p {
            text-align: center;
            color: #ffffff;
            animation: blink 1s infinite;
        }
        
        @keyframes slide-in {
            from {
                transform: translateX(100%);
                opacity: 0;
            }
            to {
                transform: translateX(0);
                opacity: 1;
            }
        }
        
        @keyframes blink {
            0% {
                opacity: 0;
            }
            50% {
                opacity: 1;
            }
            100% {
                opacity: 0;
            }
        }
    </style>
</head>
<body>
<%
    if (request.getSession().getAttribute("loggedIn") != null && (boolean) request.getSession().getAttribute("loggedIn")) {
%>
    <h1>Welcome to your Dashboard, <%= request.getSession().getAttribute("accountNumber") %>!</h1>

    <form method="post" action="<%= request.getContextPath() %>/CustomerServlet">
        <input type="submit" name="account" value="Account">
        <input type="submit" name="transactions" value="Transactions">
        <input type="submit" name="deposit" value="Deposit">
        <input type="submit" name="withdraw" value="Withdraw">
        <input type="submit" name="delete" value="Delete">
        <input type="submit" name="logout" value="Logout">
    </form>
<%
    } else {
%>
    <p class="blinking">You are not logged in. Please log in to access the dashboard.</p>
<%
    }
%>
</body>
</html>
