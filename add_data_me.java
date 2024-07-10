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
@WebServlet("/me")
public class add_data_me extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String reg_no = request.getParameter("registration_number");
		String med = request.getParameter("med");
		String mem = request.getParameter("mem");
		String som = request.getParameter("som");
		String mp = request.getParameter("mp");
		String te = request.getParameter("te");
		
		PrintWriter out = response.getWriter();
		RequestDispatcher dispatcher = null;
		Connection con =null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-app", "root","ccpcst");
			PreparedStatement pet = con
					.prepareStatement("select * from student_info where reg_no=? and branch='me'");
			pet.setString(1, reg_no);

			ResultSet res = pet.executeQuery();
			if (res.next()) {
			PreparedStatement pst = con.prepareStatement("insert into me(reg_no,med,mem,som,mp,te) values(?,?,?,?,?,?)");
			pst.setString(1, reg_no);
			pst.setString(2, med);
			pst.setString(3, mem);
			pst.setString(4, som);
			pst.setString(5, mp);
			pst.setString(6, te);

			int rowCount = pst.executeUpdate();
			dispatcher =request.getRequestDispatcher("form2.jsp");
			if (rowCount > 0) {
				request.setAttribute("Status", "Success");
			}else {
				request.setAttribute("Status", "Failed");
			}
		}else {
			dispatcher=request.getRequestDispatcher("error_me.jsp");
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
