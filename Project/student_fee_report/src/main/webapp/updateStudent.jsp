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
        width: 90%; /* Responsive width */
        max-width: 400px; /* Limit the maximum width */
        padding: 20px; /* Add padding inside the container */
        background-color: #fff; /* White background color */
        border-radius: 8px; /* Round the corners of the container */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add a subtle shadow for depth */
        text-align: center; /* Center-align text and elements inside the container */
    }

    /* Style the form elements */
    form {
        display: flex;
        flex-direction: column; /* Stack form elements vertically */
        gap: 15px; /* Space between form elements */
        align-items: center; /* Center-align form elements */
    }

    input[type="number"] {
        width: 100%; /* Full width of the container */
        padding: 12px; /* Add padding inside the input fields */
        font-size: 16px; /* Set a readable font size */
        border: 1px solid #ccc; /* Light border around the input fields */
        border-radius: 5px; /* Round the corners of the input fields */
        box-sizing: border-box; /* Ensure padding is included in width */
    }

    input[type="number"]:focus {
        border-color: #007BFF; /* Change border color on focus */
        outline: none; /* Remove default outline */
    }

    button {
        padding: 12px 20px; /* Add padding inside the button */
        font-size: 16px; /* Set font size */
        color: #fff; /* White text color */
        background-color: #007BFF; /* Blue background color */
        border: none; /* Remove default border */
        border-radius: 5px; /* Round the corners of the button */
        cursor: pointer; /* Pointer cursor on hover */
        transition: background-color 0.3s ease; /* Smooth hover transition */
    }

    button:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }
</style>
</head>
<body>
<div>
    <h1>Update Student</h1>
    <form action="UpdateStudent" method="post">
        <input type="number" placeholder="Enter Student Id" name="StudentId" required><br>
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>
