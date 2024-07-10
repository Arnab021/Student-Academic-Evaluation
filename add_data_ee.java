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
@WebServlet("/ee")
public class add_data_ee extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String reg_no = request.getParameter("registration_number");
		String iegs = request.getParameter("iegs");
		String ec = request.getParameter("ec");
		String eem = request.getParameter("eem");
		String dmt = request.getParameter("dmt");
		String ade = request.getParameter("ade");

		PrintWriter out = response.getWriter();
		RequestDispatcher dispatcher = null;
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-app", "root", "ccpcst");
			PreparedStatement pet = con.prepareStatement("select * from student_info where reg_no=? and branch='ee'");
			pet.setString(1, reg_no);

			ResultSet res = pet.executeQuery();
			if (res.next()) {
				PreparedStatement pst = con
						.prepareStatement("insert into ee(reg_no,iegs,ec,eem,dmt,ade) values(?,?,?,?,?,?)");
				pst.setString(1, reg_no);
				pst.setString(2, iegs);
				pst.setString(3, ec);
				pst.setString(4, eem);
				pst.setString(5, dmt);
				pst.setString(6, ade);

				int rowCount = pst.executeUpdate();
				dispatcher = request.getRequestDispatcher("form2.jsp");
				if (rowCount > 0) {
					request.setAttribute("Status", "Success");
				} else {
					request.setAttribute("Status", "Failed");
				}
			}else {
				dispatcher=request.getRequestDispatcher("error_ee.jsp");
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
