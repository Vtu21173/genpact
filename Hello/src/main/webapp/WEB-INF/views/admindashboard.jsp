<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            user-select: none;
            color:black;
            background-color: #f0f0f0;
             /* Light gray background */
        }
        
        .header-strip {
            background-color: #12388e; /* Dark blue background */
            padding: 10px 20px;
            text-align: left;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Shadow */
        }
        
        h1 {
            margin: 0;
            font-size: 24px;
        }
        
        h2 {
            text-align: center;
            margin-top: 20px;
            color: #333; /* Dark gray text */
        }
        
        p {
            text-align: center;
            color: #555; /* Gray text */
            animation: blink 1s infinite alternate;
        }
        
        @keyframes blink {
            0% {
                opacity: 1;
            }
            100% {
                opacity: 0;
            }
        }
        
        .tiles-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin: 20px;
        }
        
        .tile {
            width: 200px;
            margin: 0 10px 20px;
            text-align: center;
            background-color: #fff; /* White background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease, transform 0.3s ease;
        }
        
        .tile:hover {
            background-color: #f0f0f0; /* Light gray background on hover */
            transform: translateY(-5px); /* Move tile up slightly on hover */
        }
        
        .tile img {
            width: 100px;
            height: 100px;
            margin-bottom: 10px;
        }

        button {
            background-color: #yellow; /* Blue button color */
            color: black; /* Text color */
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease, font-size 0.3s ease, font-weight 0.3s ease;
            text-decoration: none;
            display: inline-block; /* Ensures the button expands to fit the text */
        }

        button:hover {
            background-color: #0056b3; /* Darker blue background color on hover */
            font-weight: bold;
        }
        
        button a {
            color: black; /* Text color inside the button */
            text-decoration: none; /* Remove underline from link */
        }
    </style>
</head>
<body>
    <div class="header-strip">
        <h1>Genpact Bank</h1>
        <div class="tile1">
            <button><a href="<%= request.getContextPath() %>/AdminLogoutServlet">Logout</a></button>
        </div>
    </div>
    <h2>Welcome Admin</h2>
    
    <div class="tiles-container">
        <div class="tile">
            <img src="ADD-CUS.jpg" alt="Add Customer">
            <button><a href="<%= request.getContextPath() %>/RegisterServlet">Add Customer</a></button>
        </div>
        <div class="tile">
            <img src="mod-cus.png" alt="Modify Customer">
            <button><a href="<%= request.getContextPath() %>/ModifyCustomerServlet">Modify Customer</a></button>
        </div>
        <div class="tile">
            <img src="view.png" alt="View Customer Details">
            <button><a href="<%= request.getContextPath() %>/ViewCustomerServlet">View Customer Details</a></button>
        </div>
        <div class="tile">
            <img src="delete-cus.png" alt="Delete Customer">
            <button><a href="<%= request.getContextPath() %>/DeleteCustomerServlet">Delete Customer</a></button>
        </div>
    </div>
</body>
</html>
