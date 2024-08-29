package student_fee_report;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/addAccountant")
public class AddAccountant extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer AccountantId = Integer.parseInt(req.getParameter("AccountantId"));
		String AccountantName = req.getParameter("AccountantName");
		Long AccountantPhoneNumber = Long.parseLong(req.getParameter("AccountantPhoneNumber"));
		String AccountantEmail = req.getParameter("AccountantEmail");
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/accountant"; // table details
		String username = "root"; // MySQL credentials
		String password = "root";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,username,password);
			PreparedStatement pst = conn.prepareStatement("INSERT INTO accountant_database VALUES(?,?,?,?)");
			pst.setInt(1, AccountantId);
			pst.setString(2, AccountantName);
			pst.setLong(3, AccountantPhoneNumber);
			pst.setString(4, AccountantEmail);
			pst.executeUpdate();
			resp.sendRedirect("accountantMsg.jsp");

		} catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
		finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		} 
	}
}
