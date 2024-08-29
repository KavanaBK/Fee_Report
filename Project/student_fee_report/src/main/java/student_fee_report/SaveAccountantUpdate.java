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
@WebServlet("/saveUpdate")
public class SaveAccountantUpdate extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer AccountantId = Integer.parseInt(req.getParameter("AccountantId"));
		String AccountantName = req.getParameter("AccountantName");
		Long AccountantPhoneNumber = Long.parseLong(req.getParameter("AccountantPhoneNumber"));
		String AccountantEmail = req.getParameter("AccountantEmail");

		Connection conn= null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/accountant?user=root&password=root");
			
			
			PreparedStatement pst = conn.prepareStatement("UPDATE accountant_database SET AccountantName=?,AccountantPhoneNumber=?, AccountantEmail=? WHERE AccountantId=?");
			pst.setString(1, AccountantName);
			pst.setLong(2, AccountantPhoneNumber);
			pst.setString(3, AccountantEmail);
			pst.setInt(4, AccountantId);
			pst.executeUpdate();
			
			
			resp.sendRedirect("accountantMsg.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
