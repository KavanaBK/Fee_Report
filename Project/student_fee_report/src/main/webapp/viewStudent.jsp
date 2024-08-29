<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
<style>
    /* Style the body */
    body {
        font-family: Arial, sans-serif; /* Clean, modern font */
        margin: 0; /* Remove default margin */
        padding: 0; /* Remove default padding */
        background-color: #f0f0f0; /* Light background color */
    }

    /* Style the container div */
    div {
        width: 90%; /* Responsive width */
        max-width: 1200px; /* Limit the maximum width */
        margin: 20px auto; /* Center the container horizontally with top and bottom margins */
        padding: 20px; /* Add padding inside the container */
        background-color: #fff; /* White background color for the content */
        border-radius: 8px; /* Round the corners of the container */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add a subtle shadow for depth */
        text-align: center; /* Center-align text and elements inside the container */
    }

    /* Style the title */
    h1 {
        color: #333; /* Dark gray color for the title text */
        font-size: 24px; /* Set a slightly larger font size */
        margin-bottom: 20px; /* Space below the title */
        font-family: Arial, sans-serif; /* Clean, modern font */
    }

    /* Style the table */
    table {
        width: 100%; /* Full width of the container */
        border-collapse: collapse; /* Collapse borders between cells */
        margin-top: 20px; /* Space above the table */
    }

    th, td {
        padding: 10px; /* Add padding inside table cells */
        border: 1px solid #ddd; /* Light gray border around cells */
    }

    th {
        background-color: #132743; /* Dark blue background for header */
        color: white; /* White text color for header */
        font-family: monospace; /* Monospace font for header */
        text-align: center; /* Center-align text in header cells */
    }

    td {
        font-family: monospace; /* Monospace font for table data */
        text-align: center; /* Center-align text in data cells */
    }

    /* Style the button */
    button {
        padding: 12px 20px; /* Add padding inside the button */
        font-size: 16px; /* Set font size */
        color: #fff; /* White text color */
        background-color: #007BFF; /* Blue background color */
        border: none; /* Remove default border */
        border-radius: 5px; /* Round the corners of the button */
        cursor: pointer; /* Pointer cursor on hover */
        transition: background-color 0.3s ease; /* Smooth hover transition */
        margin-top: 20px; /* Space above the button */
    }

    button:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }
</style>
</head>
<body>
<div>
    <h1>Student Details</h1>
    <table>
        <tr>
            <th>Student ID</th>
            <th>Student Name</th>
            <th>Course</th>
            <th>Student Phone No</th>
            <th>Student Email</th>
            <th>Fee</th>
            <th>Paid</th>
            <th>Due</th>
        </tr>
        <%ResultSet rs = (ResultSet)request.getAttribute("result");
        while(rs.next()) { %>
        <tr>
            <td><%= rs.getInt("StudentId") %></td>
            <td><%= rs.getString("StudentName") %></td>
            <td><%= rs.getString("Course") %></td>
            <td><%= rs.getLong("StudentPhoneNumber") %></td>
            <td><%= rs.getString("StudentEmail") %></td>
            <td><%= rs.getInt("Fee") %></td>
            <td><%= rs.getInt("Paid") %></td>
            <td><%= rs.getInt("Due") %></td>
        </tr>
        <%} %>
    </table>
    <a href="studentMsg.jsp"><button>Return To Home</button></a>
</div>
</body>
</html>
