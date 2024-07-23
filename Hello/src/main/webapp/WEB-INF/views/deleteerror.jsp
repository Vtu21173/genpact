<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            user-select: none;
            position: relative;
        }
        
        body::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-image: url('background-image.jpg'); /* Replace with your background image path */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            opacity: 0.7; /* Adjust the opacity value */
            z-index: -1; /* Ensure it's behind other content */
        }
        
        #error-container {
            text-align: center;
            margin-top: 200px; /* Adjusted margin top */
            color: red;
        }
        
        #error-container h2 {
            padding-top: 50px;
            margin-top: 25px;
            color: black;
            animation: blink 2s infinite alternate;
        }
        
        #error-container p {
            margin-top: 10px;
        }
        
        #error-container a {
            color: green;
            text-decoration: none;
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
    <div id="error-container">
        <h2>Error</h2>
        <p>${errorMessage}</p>
        <p><a href="<%= request.getContextPath() %>/DeleteServlet">Go back</a></p>
    </div>
</body>
</html>
