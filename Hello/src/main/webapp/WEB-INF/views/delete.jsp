<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Account</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .header-strip {
            background-color: #1a1a1a;
            color: white;
            padding: 10px 20px;
            width: 100%;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
        }

        .header-strip h1 {
            margin: 0;
            padding-left: 20px;
        }

        .tile {
            margin-bottom: 20px;
            text-align: center;
        }

        .tile img {
            max-width: 100px; /* Adjusted image size */
            height: auto;
        }

        h2 {
            color: black;
            text-align: center;
            margin-top: 30px;
        }

        form {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 60%;
            max-width: 600px;
            text-align: center;
        }

        form p {
            margin-bottom: 20px;
            color: black;
        }

        button[type="submit"] {
            background-color: #ff0000; /* Red button */
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 50%;
            max-width: 200px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #cc0000; /* Darker red on hover */
            transform: scale(1.05); /* Slightly enlarge on hover */
        }
    </style>
</head>
<body>
    <div class="header-strip">
        <h1>VelTech Bank</h1>
    </div>

    <div class="tile">
        <img src="delete-cus.png" alt="Delete Customer">
    </div>

    <h2>Delete Account</h2>

    <form action="<%= request.getContextPath() %>/DeleteServlet" method="post">
        <p>Are you sure you want to close your account?</p>
        <button type="submit">Yes, Close Account</button>
    </form>
</body>
</html>
