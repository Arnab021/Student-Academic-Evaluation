package Registration;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
@WebServlet("/register")
public class connection extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String registration_number = request.getParameter("registration_number");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-app", "root", "ccpcst");
			PreparedStatement pst = con.prepareStatement("select * from student_info where reg_no=? and branch='cst'");
			pst.setString(1, registration_number);

			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				session.setAttribute("Status", "Success");
				dispatcher = request.getRequestDispatcher("cst_marksheet.jsp");
			} else {
				PreparedStatement pet = con
						.prepareStatement("select * from student_info where reg_no=? and branch='ee'");
				pet.setString(1, registration_number);

				ResultSet res = pet.executeQuery();
				if (res.next()) {
					session.setAttribute("Status", "Success");
					dispatcher = request.getRequestDispatcher("ee_marksheet.jsp");
				} else {
					PreparedStatement pett = con
							.prepareStatement("select * from student_info where reg_no=? and branch='etce'");
					pett.setString(1, registration_number);

					ResultSet rets = pett.executeQuery();
					if (rets.next()) {
						session.setAttribute("Status", "Success");
						dispatcher = request.getRequestDispatcher("etce_marksheet.jsp");
					} else {
						PreparedStatement pmt = con
								.prepareStatement("select * from student_info where reg_no=? and branch='me'");
						pmt.setString(1, registration_number);

						ResultSet rms = pmt.executeQuery();
						if (rms.next()) {
							session.setAttribute("Status", "Success");
							dispatcher = request.getRequestDispatcher("me_marksheet.jsp");
						} else {
							request.setAttribute("Status", "Failed");
							dispatcher =request.getRequestDispatcher("2nd_page_folt.jsp");
						}
					}
				}
			}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
