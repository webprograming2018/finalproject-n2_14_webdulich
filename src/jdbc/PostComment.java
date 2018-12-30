package jdbc;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class PostComment
 */
@WebServlet("/PostComment")
public class PostComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostComment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		try {
			HttpSession session = request.getSession();
			String email = session.getAttribute("email").toString();
			String tour = request.getParameter("tour");
			String text = request.getParameter("comment");
			String time = LocalDateTime.now().toString();
			String sql="INSERT INTO comment (text, time, email, tour) VALUES (?,?,?,?)";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/ltweb","root","");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, text);
			ps.setString(2, time);
			ps.setString(3, email);
			ps.setString(4, tour);
			ps.executeUpdate();
			//PrintWriter out = response.getWriter();
			//out.print("ten: "+tour);
			response.sendRedirect(tour+".jsp");
		}		
		catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}

}
