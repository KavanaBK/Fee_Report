<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>
<style>
    /* Style the body */
    body {
        font-family: Arial, sans-serif; /* Clean, modern font */
        margin: 0; /* Remove default margin */
        padding: 0; /* Remove default padding */
        background-color: #f0f0f0; /* Light background color */
        display: flex; /* Use flexbox for centering */
        justify-content: center; /* Center horizontally */
        align-items: center; /* Center vertically */
        height: 100vh; /* Full viewport height */
    }

    /* Style the container div */
    div {
        width: 100%; /* Full width of the viewport */
        max-width: 500px; /* Limit the maximum width */
        padding: 20px; /* Add padding inside the container */
        background-color: #fff; /* White background color */
        border-radius: 8px; /* Round the corners of the container */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add a subtle shadow for depth */
        box-sizing: border-box; /* Include padding and border in the element’s total width and height */
        text-align: center; /* Center-align text and elements inside the container */
        margin: 20px; /* Add margin to ensure spacing on small screens */
    }

    /* Style the title */
    h1 {
        color: #333; /* Dark gray color for the title text */
        font-size: 22px; /* Adjusted font size for a more compact look */
        margin-bottom: 15px; /* Reduced space below the title */
        font-family: Arial, sans-serif; /* Clean, modern font */
    }

    /* Style the form elements */
    form {
        display: flex;
        flex-direction: column; /* Stack form elements vertically */
        gap: 10px; /* Reduced space between form elements */
    }

    input[type="number"],
    input[type="text"] {
        width: 100%; /* Full width of the container */
        padding: 8px; /* Reduced padding inside the input fields */
        font-size: 14px; /* Smaller font size for a more compact look */
        border: 1px solid #ccc; /* Light border around the input fields */
        border-radius: 4px; /* Round the corners of the input fields */
        box-sizing: border-box; /* Ensure padding is included in width */
    }

    input[type="number"]:focus,
    input[type="text"]:focus {
        border-color: #007BFF; /* Change border color on focus */
        outline: none; /* Remove default outline */
    }

    button {
        padding: 10px 18px; /* Adjusted padding inside the button */
        font-size: 14px; /* Smaller font size */
        color: #fff; /* White text color */
        background-color: #007BFF; /* Blue background color */
        border: none; /* Remove default border */
        border-radius: 4px; /* Round the corners of the button */
        cursor: pointer; /* Pointer cursor on hover */
        transition: background-color 0.3s ease; /* Smooth hover transition */
    }

    button:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }
</style>
</head>
<body>

<%ResultSet rs = (ResultSet) request.getAttribute("result");
rs.next();%>

<div>
    <h1>UPDATE</h1>
    <form action="saveStudent" method="post">
        <input type="number" value="<%= rs.getInt(1) %>" name="StudentId" readonly="readonly"><br>
        <input type="text" value="<%= rs.getString(2) %>" name="StudentName"><br>
        <input type="text" value="<%= rs.getString(3) %>" name="Course"><br>
        <input type="number" value="<%= rs.getLong(4) %>" name="StudentPhoneNumber"><br>
        <input type="text" value="<%= rs.getString(5) %>" name="StudentEmail"><br>
        <input type="number" value="<%= rs.getLong(6) %>" name="Fee"><br>
        <input type="number" value="<%= rs.getLong(7) %>" name="Paid"><br>
        <input type="number" value="<%= rs.getLong(8) %>" name="Due"><br>
        <button type="submit">Update</button>
    </form>
</div>

</body>
</html>
