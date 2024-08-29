<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Accountant</title>
<style>
    /* Center and style the title */
    h1 {
        text-align: center; /* Center the title */
        font-size: 28px; /* Increase font size */
        color: #333; /* Set text color */
        margin-bottom: 20px; /* Space below the title */
    }

    /* Style the container div */
    div {
        width: 400px; /* Set a fixed width for the form container */
        margin: 50px auto; /* Center the container horizontally */
        padding: 20px; /* Add padding inside the container */
        background-color: #f4f4f4; /* Light gray background */
        border-radius: 10px; /* Round the corners */
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
    }

    /* Style the form elements */
    form {
        display: flex;
        flex-direction: column; /* Stack form elements vertically */
        gap: 10px; /* Space between form elements */
    }

    input[type="number"],
    input[type="text"],
    input[type="tel"],
    input[type="email"] {
        padding: 12px; /* Add padding inside input fields */
        font-size: 16px; /* Set font size */
        border: 1px solid #ccc; /* Light border around input fields */
        border-radius: 5px; /* Round the corners */
        box-sizing: border-box; /* Ensure padding doesn't affect width */
    }

    input[type="number"]:focus,
    input[type="text"]:focus,
    input[type="tel"]:focus,
    input[type="email"]:focus {
        border-color: #007BFF; /* Change border color on focus */
        outline: none; /* Remove the default outline */
    }

    button {
        padding: 12px; /* Add padding inside the button */
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
</style>
</head>
<body>
<div>
    <h1>REGISTER</h1>
    <form action="addAccountant" method="post">
        <input type="number" placeholder="Enter Accountant Id" name="AccountantId" required><br>
        <input type="text" placeholder="Enter Accountant Name" name="AccountantName" required><br>
        <input type="tel" placeholder="Enter Accountant Phone Number" name="AccountantPhoneNumber" pattern="[0-9]{10}" required><br>
        <input type="email" placeholder="Enter Accountant Email" name="AccountantEmail" required><br><br>
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>
