<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Accountant</title>
<style>
    /* Style the container div */
    div {
        width: 300px; /* Set a fixed width for the form container */
        margin: 100px auto; /* Center the container horizontally and add top margin */
        padding: 20px; /* Add padding inside the container */
        background-color: #f4f4f4; /* Light gray background color */
        border-radius: 10px; /* Round the corners of the container */
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow for depth */
        text-align: center; /* Center-align the text inside the container */
    }

    /* Style the input field */
    input[type="number"] {
        width: 100%; /* Full width for the input field */
        padding: 12px; /* Add padding inside the input field */
        font-size: 16px; /* Set font size for input text */
        margin: 10px 0; /* Add margin above and below the input field */
        border: 1px solid #ccc; /* Light border around the input field */
        border-radius: 5px; /* Round the corners of the input field */
        box-sizing: border-box; /* Ensure padding doesn’t affect the width */
    }

    /* Style the button */
    button {
        width: 100%; /* Full width for the button */
        padding: 12px; /* Add padding inside the button */
        font-size: 16px; /* Set font size for button text */
        color: #fff; /* White text color */
        background-color: #007BFF; /* Blue background color */
        border: none; /* Remove the default border */
        border-radius: 5px; /* Round the corners of the button */
        cursor: pointer; /* Pointer cursor on hover */
        transition: background-color 0.3s ease; /* Smooth transition for hover effect */
    }

    /* Hover effect for the button */
    button:hover {
        background-color: #0056b3; /* Darker blue color on hover */
    }
</style>
</head>
<body>
<div>
    <h1>UPDATE</h1>
    <form action="UpdateAccountant" method="post">
        <input type="number" placeholder="Enter Accountant Id" name="AccountantId" required><br>
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>
