<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Student</title>
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
        max-width: 500px; /* Limit the maximum width */
        margin: 20px auto; /* Center the container horizontally with top and bottom margins */
        padding: 20px; /* Add padding inside the container */
        background-color: #fff; /* White background color for the form */
        border-radius: 8px; /* Round the corners of the container */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add a subtle shadow for depth */
        text-align: center; /* Center-align text and elements inside the container */
    }

    /* Style the title */
    h1 {
        color: #333; /* Dark gray color for the title text */
        font-size: 24px; /* Set a slightly smaller font size */
        margin-bottom: 15px; /* Space below the title */
        font-family: Arial, sans-serif; /* Clean, modern font */
    }

    /* Style the form elements */
    form {
        display: flex;
        flex-direction: column; /* Stack form elements vertically */
        gap: 10px; /* Space between form elements */
        align-items: stretch; /* Make form elements stretch to full width */
    }

    input[type="number"],
    input[type="text"],
    input[type="tel"],
    input[type="email"] {
        width: 100%; /* Full width of the container */
        padding: 10px; /* Reduced padding inside the input fields */
        font-size: 14px; /* Set a smaller font size */
        border: 1px solid #ccc; /* Light border around the input fields */
        border-radius: 5px; /* Round the corners of the input fields */
        box-sizing: border-box; /* Ensure padding is included in width */
    }

    input[type="number"]:focus,
    input[type="text"]:focus,
    input[type="tel"]:focus,
    input[type="email"]:focus {
        border-color: #007BFF; /* Change border color on focus */
        outline: none; /* Remove default outline */
    }

    button {
        padding: 10px 18px; /* Reduced padding inside the button */
        font-size: 14px; /* Set a smaller font size */
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
    <h1>REGISTER</h1>
    <form action="addStudent" method="post">
        <input type="number" placeholder="Enter Student Id" name="StudentId" required><br>
        <input type="text" placeholder="Enter Student Name" name="StudentName" required><br>
        <input type="text" placeholder="Enter Course" name="Course" required><br>
        <input type="tel" placeholder="Enter Student Phone Number" name="StudentPhoneNumber" pattern="[0-9]{10}" required><br>
        <input type="email" placeholder="Enter Student Email" name="StudentEmail" required><br>
        <input type="number" placeholder="Enter Fee" name="Fee" required><br>
        <input type="number" placeholder="Enter Paid" name="Paid" required><br>
        <input type="number" placeholder="Enter Due" name="Due" required><br>
        <button type="submit">Submit</button>
    </form>
</div>
</body>
</html>
