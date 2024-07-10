package Registration;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/etce")
public class add_data_etce extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String reg_no = request.getParameter("registration_number");
		String ec = request.getParameter("ec");
		String edc = request.getParameter("edc");
		String de = request.getParameter("de");
		String ecn = request.getParameter("ecn");
		String cpl = request.getParameter("cpl");
		
		PrintWriter out = response.getWriter();
		RequestDispatcher dispatcher = null;
		Connection con =null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-app", "root","ccpcst");
			PreparedStatement pet = con
					.prepareStatement("select * from student_info where reg_no=? and branch='etce'");
			pet.setString(1, reg_no);

			ResultSet res = pet.executeQuery();
			if (res.next()) {
			PreparedStatement pst = con.prepareStatement("insert into etce(reg_no,ec,edc,de,ecn,cpl) values(?,?,?,?,?,?)");
			pst.setString(1, reg_no);
			pst.setString(2, ec);
			pst.setString(3, edc);
			pst.setString(4, de);
			pst.setString(5, ecn);
			pst.setString(6, cpl);

			int rowCount = pst.executeUpdate();
			dispatcher =request.getRequestDispatcher("form2.jsp");
			if (rowCount > 0) {
				request.setAttribute("Status", "Success");
			}else {
				request.setAttribute("Status", "Failed");
			}
		}else {
			dispatcher=request.getRequestDispatcher("error_etce.jsp");
		}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
