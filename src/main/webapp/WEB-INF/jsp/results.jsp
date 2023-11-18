<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <title>Voting Results</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            padding: 50px;
        }

        h1 {
            color: #333;
        }

        table {
            margin: 0 auto;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px 20px;
            border: 1px solid #ddd;
        }

        th {
            background-color: #333;
            color: #fff;
        }

        td {
            background-color: #fff;
        }
    </style>
</head>
<body>
    <h1>Voting Results</h1>
    <table>
        <tr>
            <th>Party</th>
            <th>Votes</th>
        </tr>
        <tr>
            <td>BJP</td>
            <td>${bJPVotes}</td>
        </tr>
        <tr>
            <td>Congress</td>
            <td>${congressVotes}</td>
        </tr>
        <tr>
            <td>TRS</td>
            <td>${trsVotes}</td>
        </tr>
    </table>
</body>
</html>
