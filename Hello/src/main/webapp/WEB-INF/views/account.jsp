<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="register.AccountDetails" %>

<html>
<head>
    <title>Account Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            user-select: none;
            background-color: #f5f5f5; /* Light gray background */
        }
       
        .header-strip {
            background-color: #2c3e50; /* Dark blue background */
            padding: 20px;
            margin-top: 0px;
            text-align: left;
            color: white;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Shadow */
        }
        
        h1 {
            margin-left: 20px;
            color: white;
            font-size: 24px;
        }
        
        h2 {	
            margin-top: 20px;
            color: #2c3e50; /* Dark blue text color */
            text-align: center;
            animation: fadeIn 1s forwards;
        }
        
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
        
        .container {
            max-width: 800px;
            margin: 20px auto;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1); /* Shadow */
            padding: 20px;
        }

        .detail-box {
            margin-bottom: 15px;
            padding: 15px;
            border: 1px solid #ddd; /* Light gray border */
            border-radius: 5px;
            background-color: #f9f9f9; /* Light gray background */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Shadow */
        }
        
        .detail-label {
            font-weight: bold;
            color: #2c3e50; /* Dark blue text color */
            margin-bottom: 5px;
        }
        
        .detail-value {
            color: #555; /* Dark gray text color */
            padding: 5px 0;
        }
        
        .tile {
            text-align: center;
            margin-bottom: 20px;
        }
        
        img {
            max-width: 80px; /* Adjusted size */
            height: auto;
        }
    </style>
</head>
<body>
    <div class="header-strip">
        <h1>VelTech Bank</h1>
    </div>
    <div class="tile">
        <img src="acc-det.png" alt="Account Details">
    </div>
    <h2>Account Details</h2>
    <div class="container">
        <%
            AccountDetails accountDetails = (AccountDetails) request.getAttribute("accountDetails");
            if (accountDetails != null) {
        %>
            <div class="detail-box">
                <div class="detail-label">Account Number:</div>
                <div class="detail-value"><%= accountDetails.getAccountNumber() %></div>
            </div>
            <div class="detail-box">
                <div class="detail-label">Account Holder Name:</div>
                <div class="detail-value"><%= accountDetails.getFullName() %></div>
            </div>
            <div class="detail-box">
                <div class="detail-label">Account Type:</div>
                <div class="detail-value"><%= accountDetails.getAccount() %></div>
            </div>
            <div class="detail-box">
                <div class="detail-label">Account Holder Address:</div>
                <div class="detail-value"><%= accountDetails.getAddress() %></div>
            </div>
            <div class="detail-box">
                <div class="detail-label">Account Holder Email-Id:</div>
                <div class="detail-value"><%= accountDetails.getEmailId() %></div>
            </div>
            <div class="detail-box">
                <div class="detail-label">Account Holder Phone Number:</div>
                <div class="detail-value"><%= accountDetails.getPhone() %></div>
            </div>
            <div class="detail-box">
                <div class="detail-label">Account Balance:</div>
                <div class="detail-value">$ <%= accountDetails.getBalance() %></div>
            </div>
            <div class="detail-box">
                <div class="detail-label">Account Holder Dob:</div>
                <div class="detail-value"><%= accountDetails.getDob() %></div>
            </div>
        <%
            } else {
        %>
            <p class="error">Account details not available.</p>
        <%
            }
        %>
    </div>
</body>
</html>
