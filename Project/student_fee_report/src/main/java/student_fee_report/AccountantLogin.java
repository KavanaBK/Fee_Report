package student_fee_report;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AccountantLogin")
public class AccountantLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String AccountantId = request.getParameter("username");
        String AccountantName = request.getParameter("password");

        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            // Database connection
            Class.forName("com.mysql.cj.jdbc.Driver"); // Ensure the MySQL driver is loaded
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/accountant", "root", "root");

            // Query to check if the username and password match
            String query = "SELECT * FROM accountant_database WHERE AccountantId=? AND AccountantName=?";
            pst = conn.prepareStatement(query);
            pst.setString(1, AccountantId);
            pst.setString(2, AccountantName);

            rs = pst.executeQuery();

            if (rs.next()) {
                // Login successful, create a session
                HttpSession session = request.getSession();
                session.setAttribute("accountant", AccountantId);
                response.sendRedirect("accountantLogin.jsp"); // Redirect to the accountant dashboard
            } else {
                // Login failed, redirect to login page with an error
                response.sendRedirect("errorMsg.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (pst != null) pst.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}

