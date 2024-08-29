<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Fee Report</title>
<style>
    /* Center and style the title */
    h1 {
        text-align: center; /* Center the title */
        font-size: 28px; /* Increase font size */
        color: #333; /* Set text color */
        margin-bottom: 20px; /* Add space below the title */
    }

    /* Style the container div */
    div {
        width: 400px; /* Set a fixed width */
        margin: 50px auto; /* Center the div horizontally */
        padding: 20px; /* Add padding inside the div */
        background-color: #f4f4f4; /* Light gray background */
        border-radius: 10px; /* Round the corners */
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
        text-align: center; /* Center-align the text inside the div */
    }

    /* Style the buttons */
    button {
        display: block; /* Make buttons block-level elements */
        width: 100%; /* Full width buttons */
        margin: 10px 0; /* Space between buttons */
        padding: 12px; /* Add padding inside the buttons */
        font-size: 16px; /* Increase font size */
        color: #fff; /* White text color */
        background-color: #007BFF; /* Blue background */
        border: none; /* Remove default border */
        border-radius: 5px; /* Round the corners */
        cursor: pointer; /* Pointer cursor on hover */
        transition: background-color 0.3s ease; /* Smooth hover transition */
    }

    /* Hover effect for buttons */
    button:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }
</style>
</head>
<body>
<div>
    <h1>Admin</h1>
    <a href="addAccountant.jsp"><button>Add Accountant</button></a>
    <a href="updateAccountant.jsp"><button>Update Accountant</button></a>
    <a href="viewAccountantById.jsp"><button>View Accountant</button></a>
    <a href="deleteAccountant.jsp"><button>Delete Accountant</button></a>
    <a href="adminLogout.jsp"><button>Logout</button></a>
</div>
</body>
</html>
