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
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class Login
 */
@WebServlet("/admin_login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("email");
		String password = request.getParameter("password");
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student-app", "root","ccpcst");
			PreparedStatement pst = con.prepareStatement("select * from admin where username=? and password=?");
			pst.setString(1, username);
			pst.setString(2, password);
			
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				session.setAttribute("username", rs.getString("username"));
				dispatcher =request.getRequestDispatcher("form2.jsp");
			}else {
				request.setAttribute("Status", "Failed");
				dispatcher =request.getRequestDispatcher("wrong_admin_login.jsp");
			}
			dispatcher.forward(request, response);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

}
