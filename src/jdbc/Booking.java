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
 * Servlet implementation class Booking
 */
@WebServlet("/Booking")
public class Booking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Booking() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			HttpSession session = request.getSession();
			String email = session.getAttribute("email").toString();
			String tour = request.getParameter("tour");
			String adultNum = request.getParameter("adultNum");
			String childNum = request.getParameter("childNum");
			String startDate = request.getParameter("startDate");
			String bookTime = LocalDateTime.now().toString();
			String sql="INSERT INTO booking (email, tour, adultNum, childNum, startDate, bookTime) VALUES (?,?,?,?,?,?)";
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/ltweb","root","");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, tour);
			ps.setString(3, adultNum);
			ps.setString(4, childNum);
			ps.setString(5, startDate);
			ps.setString(6, bookTime);
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
