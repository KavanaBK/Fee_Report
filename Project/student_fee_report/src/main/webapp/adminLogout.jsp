<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
<style>
    /* Style the container div */
    div {
        width: 300px; /* Set a fixed width for the container */
        margin: 100px auto; /* Center the container horizontally and add spacing from the top */
        padding: 20px; /* Add padding inside the container */
        background-color: #f4f4f4; /* Light gray background */
        border-radius: 10px; /* Round the corners of the container */
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow for depth */
        text-align: center; /* Center-align the text inside the container */
    }

    /* Style the success message */
    h1 {
        font-size: 24px; /* Set font size for the message */
        color: #28a745; /* Green color for success message */
        margin-bottom: 20px; /* Space below the message */
        font-family: Arial, sans-serif; /* Clean, modern font */
    }

    /* Style the return button */
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
        background-color: #0056b3; /* Darker blue color on hover */
    }

    /* Style the link to center it */
    a {
        display: inline-block; /* Make the link inline-block to center the button */
        text-decoration: none; /* Remove underline from the link */
    }
</style>
</head>
<body>
<div>
    <h1>Logged out Successfully...!</h1>
    <a href="index.jsp"><button>Return To Home</button></a>
</div>
</body>
</html>
