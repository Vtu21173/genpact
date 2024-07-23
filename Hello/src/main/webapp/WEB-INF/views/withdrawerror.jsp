<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Withdraw Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            user-select: none;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('ee.gif');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: red;
        }

        #error-message {
            text-align: center;
            margin-top: 50px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.7);
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }

        #error-message h2 {
            padding-top: 20px;
            color: red;
            animation: blink 2s infinite alternate;
        }

        #error-message p {
            margin-top: 10px;
            text-align: center;
            color: black;
        }

        #error-message a {
            color: green;
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
    <div id="error-message">
        <h2>Error: Please check the details properly</h2>
        <p>${errorMessage}</p>
        <p><a href="<%= request.getContextPath() %>/WithdrawServlet">Go back</a></p>
    </div>
</body>
</html>
