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
	<title>Đà Lạt</title>
	<link rel="stylesheet" href="DaLat.css" type="text/css">
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
				<div class="login" ><a id="login" href="Profile.jsp"><p><%=session.getAttribute("email").toString() %></p></a></div>	
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
		<div class="main">
			<div class="leftt">
				<div class="f-title">
					<div class="ff-title"><h3>ĐÀ LẠT ĐẸP NHẤT CUỐI NĂM</h3></div>
					<div class="boder-line1"></div>
				</div>
				<p style="text-align: justify;font-style: italic;padding-left: 5px;padding-right: 5px;">Từ cuối tháng 10 đến cuối tháng 12 là thời điểm đẹp nhất để du lịch Đà Lạt. Đây là lúc tiết trời Đà Lạt chuyển từ thu sang đông, cái se se lạnh đã bắt đầu và thường lạnh đỉnh điểm vào những ngày gần Noel., sáng sớm và chiều tối sương mờ giăng lối. Mùa này là mùa của những trái hồng chín mọng, mùa của những bông hoa dã quỳ bắt đầu nhuộm vàng lối sườn đồi và bên kia nương hoa cải trắng bắt đầu nở rộ.</p>
				<div class="infotour">
					<div class="infotour_1">KHÔNG KHÍ ĐUNG CHẤT ĐÀ LẠT TRONG NĂM</div>
					<div class="image">
						<img src="Dalat1.jpg" alt="profile" style="width: 595px; height: 300px; padding-left:5px;">
					</div>
					<div class="main_tour"><p style="text-align: justify;padding-left: 5px; ">Lạnh, đẹp và mờ sương. Bạn đến Đà Lạt vào đúng dịp noel cuối năm mới đích thực là Đà Lạt đẹp nhất, lạnh nhất và mờ sương nhất, sẽ vô cùng lãng mạn khi tay trong tay đi dạo và cảm nhận sương sớm của Đà Lạt . Hay cảm nhận từ ly sữa đậu này nóng hổi trong thời tiết ở Đà lạt là một trải niệm hết sức tuyệt vời.</p></div>
				</div>
				<div class="infotour">
					<div class="infotour_1">MÙA HOA DÃ QUỲ, LOÀI HOA KIÊU SA CỦA ĐÀ LẠT</div>
					<div class="image">
						<img src="dalat2.jpg" alt="profile" style="width: 595px; height: 300px; padding-left:5px;">
					</div>
					<div class="main_tour"><p style="text-align: justify; padding-left: 5px;">Hoa dã quỳ Đà Lạt nổi tiếng đến mức nó được các kiến trúc sư đưa vào làm biểu tượng tại quảng trường Lâm Viên - Đà Lạt. Loài hoa hoang dại này bắt đầu khoe sắc khắp các con đường từ nội đô thành phố đến những cung đường đầy ắp sắc vàng ở vùng ngoại ô. Mùa hoa dã quỳ Đà Lạt thường bắt đầu từ tháng 11 và kết thúc vào khoảng tháng 1 dương lịch. Hoa dã quỳ đẹp nhất vào buổi sáng, khi cái nắng của mùa đông vừa hừng lên, sương vẫn còn đọng trên lá và những cánh hoa. Bạn có thể bắt gặp sắc vàng ươm nắng của dã quỳ ở bất cứ nơi đâu, từ trong lòng thành phố bên những căn biệt thự nhỏ xinh, đến những con đường tỏa đi muôn hướng.</p></div>
				</div>
				<div class="infotour">
					<div class="infotour_1">MÙA HOA CẢI TRẮNG TINH KHIẾT, TRONG VEO</div>
					<div class="image">
						<img src="dalat3.jpg" alt="profile" style="width: 595px; height: 300px; padding-left:5px;">
					</div>
					<div class="main_tour"><p style="text-align: justify; padding-left: 5px;">Không rực rỡ và sặc sỡ như những mùa hoa khác, hoa cải trắng nhẹ nhàng hơn và đơn sơ hơn. Mỗi bông hoa trắng như một miếng bông nhỏ được đặt trên cành màu xanh lá cây. Không rực rỡ với hương sắc, hoa cải trắng như hội tụ tất cả những gì thanh khiết tinh túy nhất của đất trời để tạo nên linh hồn trong suốt, dịu nhẹ của mình. Đến với những  cánh đồng hoa, thả hồn đón gió, hít thật sâu cái trong lành của đất trời, cái nguyên sơ của tạo hóa sẽ khiến bạn như sống với chính mình, rũ bỏ lại phía sau bao bộn bề, lo toan, bao bụi bặm của phố thị xô bồ.</p></div>
				</div>
				<h2>Bình luận</h2>
				<div class="comment">
				<%
				String tour = this.getClass().getSimpleName().split("_",2)[0];
				String sql="SELECT * FROM comment WHERE tour=? ORDER BY id DESC";
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/ltweb","root","");
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, tour);;
				ResultSet rs = ps.executeQuery();
				while(rs.next()) {
				%>
					<div class="com">
						<hr>
						<h3><%= rs.getString("email") %> đã bình luận:</h3>
						<p>- <%= rs.getString("text")%></p>
						<p>Thời gian đăng <%=rs.getString("time") %></p>
					</div>
				<%
				}			
				%>
			
				</div>
					
				<%
				if(session.getAttribute("email")==null){
				%>
					<a id="login" href="Login.jsp"><p>Đăng nhập để đăng bình luận</p></a>
				<% 
				} else {
				%>
					<div class="comment">
				      <form action="PostComment" method="post">
				      	<input type="hidden" name="tour" value="DaLat">
				        <textarea class="com_input" type="text" placeholder="Bình luận của bạn" Name="comment" required="required"></textarea>
				        <input class="com_button" type="submit" value="Đăng">
				      </form>         
					</div>	
				<%
				}
				%>
			</div>
			<div class="rightt">
				<div class="f-title">
					<div class="fff-title"><h3>TRẢI NGHIỆM 360 ĐỘ</h3></div>
					<div class="boder-line2"></div>
				</div>
				<div class="image2">
					<!--<img src="vinhHaLong.jpg" alt="profile" style="width: 100%;height: 100%; ">-->
					<div class="title3"><a href="#"><h5>Khám phá Vịnh Hạ Long qua hình ảnh 360 độ</h5></a></div>
				</div>
				<iframe style="margin-left: 12px;margin-top: 12px" width="384" height="400">
				    <div id="map"></div>
				    <script>
			        var map;
			        function initMap() {
			            map = new google.maps.Map(document.getElementById('map'), {
			            center: {lat: -34.397, lng: 150.644},
			            zoom: 8
			            });
			    	}
				    </script>
				    <script async defer
				    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD7smgcXHDC5enA855zKGoY3497d4zRvhU&callback=initMap">
				    </script>
				</iframe>
				<div>
					<form action="Booking" method="post" class="booking" style="padding:30px">
					<h2>Đặt tour</h2>
						<p>Số lượng người:</p>
						<input type="hidden" name="tour" value="DaLat">
						Người lớn: <input type="number" name="adultNum" min="2"><br>
						Trẻ em: <input type="number" name="childNum" min="0"><br>
						Thời gian đi: <input type="date" name="startDate"><br><%
						if(session.getAttribute("email")==null){
						%>
							<a id="login" href="Login.jsp"><p>Đăng nhập để đặt tour</p></a>
						<% 
						} else {
						%>
					        <input type="submit" value="Đặt tour" onclick="return confirm('Xác nhận đặt tour')">	
						<%
						}
						%>
					</form>
				</div>
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