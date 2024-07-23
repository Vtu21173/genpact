<%@ page import="java.util.List" %>
<%@ page import="register.Transaction" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Transaction History</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f5f5f5; /* Light gray background */
            color: #333;
            margin: 0;
        }

        .header-strip {
            background-color: #12388A; /* Dark blue background */
            padding: 10px 0;
            text-align: center;
            color: white; /* White text */
            margin-bottom: 20px;
        }

        h1 {
            margin: 0;
            font-size: 24px;
        }

        .tile {
            text-align: center;
            margin-bottom: 20px;
        }

        img {
            max-width: 200px;
            height: auto;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
            animation: fadeInUp 1s ease-in-out;
        }

        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #fff; /* White background */
            animation: fadeIn 1s ease-in-out;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #12388A; /* Dark blue background */
            color: white; /* White text */
            animation: fadeInLeft 1s ease-in-out;
        }

        tr:hover {
            background-color: #f2f2f2; /* Light gray background on hover */
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #12388A; /* Dark blue background for button */
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #0D2958; /* Darker blue background on hover */
            font-weight: bold;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInLeft {
            from {
                opacity: 0;
                transform: translateX(-50px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }
    </style>
</head>

<body>
<div class="header-strip">
    <h1>Genpact Bank</h1>
</div>
<div class="tile">
    <img src="ADD-CUS.jpg" alt="Transaction History">
</div>
<h2>Transaction History</h2>

<%
List<Transaction> transactionList = (List<Transaction>) request.getAttribute("transactions");
System.out.println("Transaction list size in JSP: " + (transactionList != null ? transactionList.size() : "null"));
if (transactionList != null && !transactionList.isEmpty()) {
%>
    <table>
        <thead>
            <tr>
                <th>Account Number</th>
                <th>Amount</th>
                <th>Transaction Type</th>
                <th>Transaction Time</th>
            </tr>
        </thead>
        <tbody>
            <% for (Transaction transaction : transactionList) { %>
                <tr>
                    <td><%= transaction.getAccountNumber() %></td>
                    <td><%= transaction.getAmount() %></td>
                    <td><%= transaction.getTransactionType() %></td>
                    <td><%= transaction.getTransactionTime() %></td>
                </tr>
            <% } %>
        </tbody>
    </table>
<% } else { %>
    <p>No transactions found.</p>
<% } %>

<br>
<form action="<%= request.getContextPath() %>/MiniServlet" method="get">
    <input type="submit" value="Print in PDF">
</form>

</body>
</html>
