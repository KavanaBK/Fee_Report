<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accountant Details</title>
<style>
    /* Center and style the title */
    h1 {
        text-align: center; /* Center the title */
        font-size: 28px; /* Increase font size */
        color: #333; /* Set text color */
        margin-bottom: 20px; /* Space below the title */
        font-family: Arial, sans-serif; /* Set a clean, modern font */
    }

    /* Style the container div */
    div {
        width: 80%; /* Set the width of the container */
        margin: 50px auto; /* Center the container horizontally */
        padding: 20px; /* Add padding inside the container */
        background-color: #f4f4f4; /* Light gray background */
        border-radius: 10px; /* Round the corners */
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
    }

    /* Style the table */
    table {
        width: 100%; /* Make the table take up the full width of the container */
        border-collapse: collapse; /* Remove space between table cells */
        margin-bottom: 20px; /* Add space below the table */
    }

    /* Style the table header */
    th {
        background-color: #132743; /* Dark blue background */
        color: white; /* White text */
        font-family: monospace; /* Monospace font */
        padding: 10px; /* Add padding inside table headers */
    }

    /* Style the table cells */
    td {
        padding: 10px; /* Add padding inside table cells */
        text-align: center; /* Center-align text in table cells */
        font-family: monospace; /* Monospace font */
        border: 1px solid #ddd; /* Light border around table cells */
    }

    /* Style the table rows */
    tr:nth-child(even) {
        background-color: #f2f2f2; /* Light gray background for even rows */
    }

    tr:hover {
        background-color: #d1e7fd; /* Light blue background on hover */
    }

    /* Style the return button */
    button {
        padding: 12px 20px; /* Add padding inside the button */
        font-size: 16px; /* Set font size */
        color: #fff; /* White text color */
        background-color: #007BFF; /* Blue background */
        border: none; /* Remove the default border */
        border-radius: 5px; /* Round the corners */
        cursor: pointer; /* Pointer cursor on hover */
        transition: background-color 0.3s ease; /* Smooth hover transition */
    }

    button:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }

    /* Align the return button center */
    a {
        text-align: center; /* Center-align the return button */
        display: block; /* Make the link block-level to center it */
    }
</style>
</head>
<body>
<div>
<h1>Accountant Details</h1>
<table border="">
    <tr>
        <th>Accountant ID</th>
        <th>Accountant Name</th>
        <th>Accountant Phone No</th>
        <th>Accountant Email</th>
    </tr>
    <%ResultSet rs = (ResultSet)request.getAttribute("result");
    while(rs.next()) { %>
    <tr>
        <td><%=rs.getInt("AccountantId") %></td>
        <td><%=rs.getString("AccountantName") %></td>
        <td><%=rs.getLong("AccountantPhoneNumber") %></td>
        <td><%=rs.getString("AccountantEmail") %></td>
    </tr>
    <%} %>
</table>
<a href="adminLogin.jsp"><button>Return To Home</button></a>
</div>
</body>
</html>
