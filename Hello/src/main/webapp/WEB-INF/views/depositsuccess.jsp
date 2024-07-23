<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="register.AccountDetails" %> 
<%@ page import="java.math.BigDecimal" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Deposit Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            text-align: center;
            background-color: #f0f0f0; /* Light gray background */
        }
        
        img {
            max-width: 30%;
            height: auto;
            margin-top: 50px; /* Adjusted margin for image */
        }
        
        h2 {
            color: black;
            margin-top: 20px; /* Adjusted margin for heading */
        }
        
        p {
            color: black;
            margin-bottom: 10px; /* Adjusted margin for paragraphs */
        }
        
        button {
            margin-top: 20px; /* Adjusted margin for button */
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
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<%
    AccountDetails accountDetails = (AccountDetails) request.getAttribute("accountDetails");
    BigDecimal amount = (BigDecimal) request.getSession().getAttribute("amount1");
    if (accountDetails != null) {
%>
    <img src="deposit-suc-cust.gif" alt="Deposit Success">
    <h2>Deposit Success</h2>
    <p><strong>Current Balance:</strong> <%= accountDetails.getBalance() %></p>	
    <p>You have successfully deposited <%= amount %> Rs to your account.</p>
    
    <button><a href="<%= request.getContextPath() %>/CustomerDashboardServlet">Return to Dashboard</a></button>
<%
    } else {
%>
    <p class="error">Account details not available.</p>
<%
    }
%>
</body>
</html>
