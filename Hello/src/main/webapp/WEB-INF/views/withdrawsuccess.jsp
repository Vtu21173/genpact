<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="register.AccountDetails" %>
<%@ page import="java.math.BigDecimal" %>
<html>
<head>
    <title>Withdraw Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            user-select: none;
            text-align: center;
            background-color: #f0f0f0; /* Light gray background */
        }

        img {
            max-width: 30%;
            height: auto;
            margin-top: 20px;
        }

        h2 {
            margin-top: 20px;
            color: #333; /* Dark gray heading color */
        }

        p {
            color: #333; /* Dark gray text color */
            margin-bottom: 10px;
        }

        .success-message {
            margin-top: 20px;
            padding: 20px;
            background-color: #fff; /* White background */
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        button {
            margin-top: 20px;
            background-color: green;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease, font-size 0.3s ease, font-weight 0.3s ease;
        }

        button a {
            text-decoration: none;
            color: white;
        }

        button:hover {
            font-weight: bold;
            font-size: 18px;
        }
    </style>
</head>
<body>
<%
    AccountDetails accountDetails = (AccountDetails) request.getAttribute("accountDetails");
    BigDecimal amount = (BigDecimal) request.getSession().getAttribute("amount");
    if (accountDetails != null) {
%>
    <img src="withdraw-suc.jpg" alt="Withdraw Success">
    <h2>Withdraw Success</h2>

    <div class="success-message">
        <p><strong>Current Balance:</strong> <%= accountDetails.getBalance() %></p>
        <p>You have successfully withdrawn <%= amount %> Rs from your account.</p>
    </div>

    <button><a href="<%= request.getContextPath() %>/CustomerDashboardServlet">Return To Dashboard</a></button>
<%
    } else {
%>
    <p class="error">Account details not available.</p>
<%
    }
%>
</body>
</html>
