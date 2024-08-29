package student_fee_report;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/UpdateAccountant")
public class UpdateAccountantById extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer AccountantId = Integer.parseInt(req.getParameter("AccountantId"));


		Connection conn= null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/accountant?user=root&password=root");
			PreparedStatement pst = conn.prepareStatement("SELECT * FROM accountant_database WHERE AccountantId=?");

			pst.setInt(1, AccountantId);
			ResultSet rs = pst.executeQuery();
			req.setAttribute("result", rs);
			RequestDispatcher rd = req.getRequestDispatcher("updateAccountantById.jsp");
			rd.forward(req, resp);

		} catch (ClassNotFoundException |SQLException e) {

			e.printStackTrace();
		}
		finally {
			if (conn!=null) {
				try {
					conn.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
			}
		}
	}

}
