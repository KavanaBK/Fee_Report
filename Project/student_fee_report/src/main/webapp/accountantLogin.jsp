<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession s = request.getSession(false);
    if (s == null || s.getAttribute("accountant") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    String username = (String) s.getAttribute("accountant");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Accountant Dashboard</title>
    <style>
        /* General reset for the page */
        body, h1, p, a, button {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Style the body */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Container for the dashboard */
        .dashboard-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 400px;
        }

        /* Style for the welcome message */
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }

        /* Style for the paragraph */
        p {
            font-size: 18px;
            margin-bottom: 20px;
            color: #555;
        }

        /* Style for buttons */
        button {
            padding: 10px 20px;
            margin: 10px 0;
            font-size: 16px;
            color: #fff;
            background-color: #007BFF;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        /* Button hover effect */
        button:hover {
            background-color: #0056b3;
        }

        /* Style for the logout link */
        a {
            text-decoration: none;
            color: #007BFF;
        }

        a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h1>Welcome, <%= username %>!</h1>
        <p>This is the accountant dashboard.</p>
        <a href="addStudent.jsp"><button>Add Student</button></a>
        <a href="updateStudent.jsp"><button>Update Student</button></a>
        <a href="viewStudentById.jsp"><button>View Student & Due</button></a>
        <a href="deleteStudent.jsp"><button>Delete Student</button></a>
        <a href="logoutAccountant.jsp"><button>Logout</button></a>
    </div>
</body>
</html>
