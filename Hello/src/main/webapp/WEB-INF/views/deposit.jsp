<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Deposit Money</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #F0F0F0; /* Light gray background */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        .header-strip {
            background-color: rgba(18, 10, 143, 0.5); /* Dark blue header background */
            padding: 10px 0;
            text-align: center;
            color: white; /* White text */
        }
        
        h1 {
            margin: 0;
            opacity: 0;
            animation: fadeIn 1s forwards;
        }
        
        @keyframes fadeIn {
            100% {
                opacity: 1;
            }
        }
        
        .tile {
            margin: auto;
            text-align: center;
        }
        
        img {
            max-width: 200px; /* Adjusted max-width for responsiveness */
            height: auto;
            margin-top: 10px;
        }
        
        h2 {
            color: black;
            text-align: center;
            padding-top: 20px; /* Decreased padding */
            margin-bottom: 20px; /* Added margin */
        }
        
        form {
            width: 90%; /* Adjusted width for responsiveness */
            max-width: 400px;
            margin: auto;
            padding: 20px;
            border-radius: 8px;
            border: 2px solid black;
            background-color: white; /* White background */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Added box shadow for depth */
        }
        
        label {
            display: block;
            margin-bottom: 8px;
            color: black;
        }
        
        input[type="text"] {
            width: calc(100% - 16px); /* Adjusted input width */
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc; /* Added border */
            border-radius: 4px;
        }
        
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: green;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        
        input[type="submit"]:hover {
            font-weight: bold;
            font-size: 18px;
        }
        
        @media (max-width: 768px) {
            /* Adjustments for smaller screens */
            form {
                width: 100%;
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="header-strip">
        <h1>Genpact Bank</h1>
    </div>
    <div class="tile">
        <img src="deposit-cus.png" alt="Deposit Money">
    </div>
    
    <h2>Deposit Money</h2>
    
    <form action="<%= request.getContextPath() %>/DS" method="post" onsubmit="return validateForm()">
        <label for="amount1">Enter Amount:</label>
        <input type="text" id="amount1" name="amount1" required>
        <br>
        <% String depositTime = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new Date());
           session.setAttribute("depositTime", depositTime);
        %>
        <input type="submit" value="Deposit">
    </form>
    
    <script>
        function validateForm() {
            var amount = document.getElementById("amount1").value;
            if (amount <= 0) {
                alert("Deposit amount must be more than zero.");
                return false;
            }
            return true;
        }
    </script>
</body>
</html>
