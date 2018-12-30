<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Connection"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Thông tin người dùng</title>
	<link rel="stylesheet" href="Profile.css" type="text/css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
</head>
<body>
	<div class="content" id='content'>
		<div class="logo">
			<img src="logo.jpg" alt="profile" height="100" width="100" style="float: left">
			<p style="float: right;">Hotline: 19001234</p>
			<%
			if(session.getAttribute("email")==null){
			%>
				<div class="login" ><a id="login" href="Login.jsp"><p>Login</p></a></div>
				<div class="sign_up" ><a id="sign_up" href="Login.jsp"><p>Sign up</p></a></div>
			<% 
			} else {
			%>
				<div class="login" ><a id="login" href="#"><p><%=session.getAttribute("email").toString() %></p></a></div>	
				<!-- <div class="sign_up" ><a id="logout" href="/logoutServlet"><p>Logout</p></a></div> -->
				<div class="sign_up">
				<form action="Logout">
				<input type="submit" value=Logout></form>
				</div>
				
			<%
			}
			%>
			
		</div>
		<div id="mySidenav" class="sidenav">
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			<ul style="list-style-type:square">
				<li><a href="index1.html">Trang chủ</a></li>
				<li><a href="TourTrongNuoc.html">Tour trong nước</a></li>
				<li><a href="tourngoainuoc.html">Tour nước ngoài</a></li>
				<li><a href="#">Tour khuyến mãi</a></li>
			</ul>
  			
		</div>
		<span onclick="openNav()"><button class="sidenav_btn" style="float: left;"><i class="fas fa-bars"></i></button></span>
		<script>
			function openNav() {
			    document.getElementById("mySidenav").style.width = "250px";
			}

			function closeNav() {
			    document.getElementById("mySidenav").style.width = "0";
			}
		</script>
		<div class="menu">
			<ul>
				<li><a href="Index.jsp">Trang chủ</a></li>
				<li><a href="TourTrongNuoc.html">Các tour trong nước</a></li>
				<li><a href="tourngoainuoc.html">Các tour ngoài nước</a></li>
				<li><a href="#">Khuyến mại</a></li>
			</ul>
			<div style="float: right">
				<input type="text">
				<button class="search_btn"><i class="fas fa-search"></i></button>
			</div>
		</div>
		<div class="banner">
			<img src="banner.jpg" alt="profile" height="200" width="1000" >
		</div>
	
		<div class="Profile" style="margin-left:5%">
		<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/ltweb","root","");
		String sql = "SELECT * FROM user WHERE email=?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, session.getAttribute("email").toString());
		ResultSet rs = ps.executeQuery();
		while(rs.next()){
		%>
		<form action="UpdateProfile" method="post">
			<h2>Thông tin cá nhân</h2>
			<p>Email: <%=rs.getString("email") %></p>Tên: <input type="text" name="name" value="<%=rs.getString("name")%>"><br>
			CMTND: <input type="text" name="cmtnd" value="<%=rs.getString("cmtnd")%>">
			Ngày sinh: <input type="date" name="dob" value="<%=rs.getString("dob")%>"><br>
			<input type="submit" value="Lưu chỉnh sửa">
		</form>
		<%
		}
		%>
		</div>
		<div class="main">
			<div class="leftt">
				<h2>Các tour đã đặt</h2>
				<%
				sql = "SELECT * FROM booking WHERE email=? ORDER BY id DESC";
				ps = con.prepareStatement(sql);
				ps.setString(1, session.getAttribute("email").toString());
				rs = ps.executeQuery();
				while(rs.next())
				{
				%>
				<h3>Tour <%=rs.getString("tour") %></h3>
				Số người lớn: <%=rs.getString("adultNum")%><br>
				Số trẻ em: <%=rs.getString("childNum") %><br>
				Ngày đi: <%=rs.getString("startDate") %><br>
				Ngày đặt: <%=rs.getString("bookTime") %><hr>
				
				<%
				}
				%>
			</div>
			<div class="rightt">
				<h2>Bình luận của bạn</h2>
				<%
				sql = "SELECT * FROM comment WHERE email=? ORDER BY id DESC";
				ps = con.prepareStatement(sql);
				ps.setString(1, session.getAttribute("email").toString());
				rs = ps.executeQuery();
				while(rs.next())
				{
				%>
				<h3>Tour <%= rs.getString("tour") %>:</h3>
				<p>- <%= rs.getString("text")%></p>
				<p>Thời gian đăng <%=rs.getString("time") %></p>
				<hr>
				<%
				}
				%>
			</div>
		
		</div>
		<div class="footer">
			<div class="info" style="width: 50%; float: left;" >
				<img src="logo.jpg" alt="profile" height="100" width="100" style="float: left; margin-right: 10px">
				<h4 style="margin: 0px">Công ty thương mại du lịch TravelAgent</h2>
				<p><strong>Địa chỉ:</strong> Km10, đường Nguyễn Trãi, Hà Nội, Việt Nam</p>
				<p><strong>Email:</strong> travelagent@gmail.com</p>
				<p><strong>SĐT:</strong> 19001234</p>
			</div>
			<div class="social_contact" style="float: right; margin-right: 100px">
				<h3 style="margin: 0px">Follow Us!</h3>
				<button class="social_btn"><i class="fab fa-facebook-square" style="color: #2554C7"></i></button>	
				<button class="social_btn"><i class="fab fa-twitter-square" style="color: #157DEC"></i></button>	
				<button class="social_btn"><i class="fab fa-google-plus-square" style="color: #C35817"></i></button>	
				
			</div>
		</div>
	</div>
</body>
</html>