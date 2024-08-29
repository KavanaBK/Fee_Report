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

@WebServlet("/deleteAccountant")
public class DeleteAccountantById extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer AccountantId = Integer.parseInt(req.getParameter("AccountantId"));
		Connection conn =null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/accountant?user=root&password=root");
			PreparedStatement pst = conn.prepareStatement("Delete FROM  accountant_database WHERE AccountantId=?");
			pst.setInt(1, AccountantId);
			pst.execute();
			resp.sendRedirect("accountantMsg.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
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
