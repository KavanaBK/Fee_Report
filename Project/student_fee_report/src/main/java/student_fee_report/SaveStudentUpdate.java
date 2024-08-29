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
@WebServlet("/saveStudent")
public class SaveStudentUpdate extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Integer StudentId = Integer.parseInt(req.getParameter("StudentId"));
		String StudentName = req.getParameter("StudentName");
		String Course = req.getParameter("Course");
		Long StudentPhoneNumber = Long.parseLong(req.getParameter("StudentPhoneNumber"));
		String StudentEmail = req.getParameter("StudentEmail");
		Integer Fee = Integer.parseInt(req.getParameter("Fee"));
		Integer Paid = Integer.parseInt(req.getParameter("Paid"));
		Integer Due = Integer.parseInt(req.getParameter("Due"));

		Connection conn= null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_database?user=root&password=root");


			PreparedStatement pst = conn.prepareStatement("UPDATE student SET StudentName=?,Course=?,StudentPhoneNumber=?, StudentEmail=?, Fee=?, Paid=?, Due=? WHERE StudentId=?");
			pst.setString(1, StudentName);
			pst.setString(2, Course);
			pst.setLong(3, StudentPhoneNumber);
			pst.setString(4, StudentEmail);
			pst.setInt(5, Fee);
			pst.setInt(6, Paid);
			pst.setInt(7, Due);
			pst.setInt(8, StudentId);
			pst.executeUpdate();


			resp.sendRedirect("studentMsg.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
