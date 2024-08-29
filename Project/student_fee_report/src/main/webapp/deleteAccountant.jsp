<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Accountant</title>
<style>
    /* Style the container div */
    div {
        width: 300px; /* Set a fixed width for the form container */
        margin: 100px auto; /* Center the container horizontally and add space from the top */
        padding: 20px; /* Add padding inside the container */
        background-color: #f4f4f4; /* Light gray background color */
        border-radius: 10px; /* Round the corners of the container */
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow for depth */
        text-align: center; /* Center-align the text inside the container */
    }

    /* Style the form elements */
    form {
        display: flex;
        flex-direction: column; /* Stack form elements vertically */
        gap: 15px; /* Space between form elements */
    }

    input[type="number"] {
        padding: 12px; /* Add padding inside the input field */
        font-size: 16px; /* Set a comfortable font size */
        border: 1px solid #ccc; /* Light border around the input field */
        border-radius: 5px; /* Round the corners of the input field */
        box-sizing: border-box; /* Ensure padding doesn't affect width */
    }

    input[type="number"]:focus {
        border-color: #007BFF; /* Change border color on focus */
        outline: none; /* Remove the default outline */
    }

    button {
        padding: 12px; /* Add padding inside the button */
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
</style>
</head>
<body>
<div>
   <h1>DELETE</h1>
    <form action="deleteAccountant" method="post">
        <input type="number" placeholder="Enter Accountant Id" name="AccountantId"><br>
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>
