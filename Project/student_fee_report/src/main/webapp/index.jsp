<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Fee Report</title>
<style>
    /* Center the title */
    h1 {
        text-align: center; /* Center the text horizontally */
        font-size: 24px; /* Optional: Adjust the font size */
        color: #333; /* Optional: Change the text color */
    }

    /* Styles for the content div */
    #content {
        margin: 20px auto; /* Centering the div horizontally */
        width: 300px; /* Fixed width for the content div */
        padding: 20px; /* Padding inside the div */
        background-color: #f9f9f9; /* Light background color */
        border-radius: 8px; /* Rounded corners */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Subtle shadow for depth */
        text-align: center; /* Center-align the text inside the div */
    }

    /* Styles for the buttons inside the content div */
    #content button {
        margin: 10px 0; /* Space between buttons */
        padding: 10px 20px; /* Padding inside the buttons */
        font-size: 16px; /* Font size for the button text */
        background-color: #4CAF50; /* Green background for buttons */
        color: white; /* White text color */
        border: none; /* Remove default border */
        border-radius: 5px; /* Rounded corners for buttons */
        cursor: pointer; /* Pointer cursor on hover */
        transition: background-color 0.3s ease; /* Smooth transition for hover effect */
    }

    /* Hover effect for buttons */
    #content button:hover {
        background-color: #45a049; /* Slightly darker green on hover */
    }
</style>
</head>
<body>
<div>
    <h1>Student Fee Report</h1>
    <div id="content">
        <a href="loginAdmin.jsp"><button>Admin Login</button></a>
        <a href="loginAccountant.jsp"><button>Accountant Login</button></a>
    </div>
</div>
</body>
</html>
