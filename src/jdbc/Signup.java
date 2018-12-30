package jdbc;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class Signup
 */
@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Signup() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			int t=0;
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String pass1 = request.getParameter("pass1");
			String pass2 = request.getParameter("pass2");
			String sql="SELECT * FROM user";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/ltweb","root","");
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				if(rs.getString("email").equals(email)) {
					t=1;
				}
			}
			if(pass1.equals(pass2) && t==0) {
				sql="INSERT INTO user (email, password, name) VALUES (?,?,?)";
				ps = con.prepareStatement(sql);
				ps.setString(1, email);
				ps.setString(2, pass1);
				ps.setString(3, name);
				ps.executeUpdate();
				response.sendRedirect("Login.jsp");
			}
			else {
				response.sendRedirect("Signup.jsp");
			}
		}		
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}

}
