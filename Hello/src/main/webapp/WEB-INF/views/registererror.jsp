<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Error</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f5f5f5; /* Light gray background */
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh; /* Full viewport height */
    }

    body::after {
        content: '';
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-image: url('ee.gif');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        opacity: 0.5; /* Adjusted the opacity for better readability */
        z-index: -1;
    }

    #content {
        text-align: center;
        color: white;
    }

    h2 {
        margin-top: 50px; /* Adjusted margin for better spacing */
        color: red; /* Red color for emphasis */
        animation: blink 0.5s infinite alternate;
    }

    @keyframes blink {
        0% {
            opacity: 1;
        }
        100% {
            opacity: 0;
        }
    }

    p {
        margin-top: 10px;
        color: black; /* Adjusted text color for better contrast */
    }

    a {
        color: white;
        text-decoration: none;
        background-color: #007bff; /* Blue button background */
        padding: 10px 20px;
        border-radius: 5px;
        transition: background-color 0.3s ease, color 0.3s ease;
    }

    a:hover {
        background-color: #0056b3; /* Darker blue on hover */
        color: white;
    }
</style>
</head>
<body>
<div id="content">
    <h2>Error</h2>
    <p id="hell">${errorMessage}</p>
    <p id="hed"><a href="<%= request.getContextPath() %>/RegisterServlet">Go back</a></p>
</div>

</body>
</html>
