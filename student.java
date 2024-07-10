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
import java.sql.SQLException;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/Student_info")
public class student extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String reg_no = request.getParameter("registration_number");
		String name = request.getParameter("name");
		String branch = request.getParameter("branch");
		String father_name = request.getParameter("father_name");
		String gender = request.getParameter("gender");
		PrintWriter out = response.getWriter();
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-app", "root", "ccpcst");
			if (!branch.equalsIgnoreCase("Select your branch") && !gender.equalsIgnoreCase("Select Gender")&&reg_no.charAt(0)=='D'&& reg_no.length()==10) {
				PreparedStatement pst = con.prepareStatement(
						"insert into student_info(reg_no,name,branch,father_name,gender) values(?,?,?,?,?)");
				pst.setString(1, reg_no);
				pst.setString(2, name);
				pst.setString(3, branch);
				pst.setString(4, father_name);
				pst.setString(5, gender);

				int rowCount = pst.executeUpdate();
				if (branch.equalsIgnoreCase("CST") || branch.equalsIgnoreCase("cst")) {
					dispatcher = request.getRequestDispatcher("cst.jsp");
				} else if (branch.equalsIgnoreCase("EE") || branch.equalsIgnoreCase("ee")) {
					dispatcher = request.getRequestDispatcher("ee.jsp");
				} else if (branch.equalsIgnoreCase("ETCE") || branch.equalsIgnoreCase("etce")) {
					dispatcher = request.getRequestDispatcher("etce.jsp");
				} else if (branch.equalsIgnoreCase("ME") || branch.equalsIgnoreCase("me")) {
					dispatcher = request.getRequestDispatcher("me.jsp");
				}else {
					dispatcher = request.getRequestDispatcher("form2.jsp");
				}
				if (rowCount > 0) {
					request.setAttribute("Status", "Success");
				} else {
					request.setAttribute("Status", "Failed");
				}
			} else {
				dispatcher = request.getRequestDispatcher("form2.jsp");
			}
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
