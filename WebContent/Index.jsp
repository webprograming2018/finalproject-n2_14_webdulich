<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Tour du lịch giá rẻ</title>
	<link rel="stylesheet" type="text/css" href="Index.css">
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
				<div class="sign_up" ><a id="sign_up" href="Signup.jsp"><p>Sign up</p></a></div>
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
			
			<select onchange="handleSelectChange(event)" style="float: right;margin-top: 15px;margin-right: 10px">
				<option value="0" selected>-- Select font --</option>
			    <option value="1">Arial</option>
			    <option value="2">Times New Roman</option>
			</select>
			<select onchange="handleSelectChangeColor(event)" style="float: right;margin-top: 15px;margin-right: 10px">
				<option value="0" selected>-- Select Color --</option>
			    <option value="1">Red</option>
			    <option value="2">Blue</option>
			</select>
		</div>
		<div id="mySidenav" class="sidenav">
			<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
			<ul style="list-style-type:square" id="change">
				<li><a href="#">Trang chủ</a></li>
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
			<ul id="change">
				<li><p style="margin-top: 0;margin-bottom: 0;">Trang chủ</p></li>
				<li><a id="iddd" href="TourTrongNuoc.html" style="text-decoration: none;color: black;"><p style="margin-top: 0;margin-bottom: 0;">Các tour trong nước</p></a></li>
				<li><a id="iddd" href="tourngoainuoc.html" style="text-decoration: none;color: black;"><p style="margin-top: 0;margin-bottom: 0;">Các tour ngoài nước</p></a></li>
				<li><p style="margin-top: 0;margin-bottom: 0;">Khuyến mại</p></li>
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
			<div  class="title" style="text-align: center;color: black;margin:0"><h1 style="margin:0; color: #2554C7"><p id="hehe" style="margin: 0; padding-top: 20px;">Tour khuyến mãi</p></h1></div>
			<div class="anh" style="width: 100%;height: 200px;display: flex;">
				<div class="anh1" style="width: 20%;height: 200px;padding: 25px">
					<div class="anh_tour" style="width: 100%;height: 150px;background-color: violet">
						<img src="Dalat1.jpg" alt="" height="150" width="100%">
					</div>
					<div class="info_tour" style="width: 100%;height: 100px;background-color: #95B9C7">
						<a class="tour_name" href="DaLat.jsp" style="text-decoration: none; color: white; margin-left: 40px;"><p style="padding-top: 0px;">Du lịch Đà Lạt</p></a>
						<p style="padding-top: 0px;">3 ngày 2 đêm</p>
						<p class="tour_price" style="color: red">4.000.000đ</p>
					</div>
				</div>
				<div class="anh1" style="width: 20%;height: 200px;padding: 25px">
					<div class="anh_tour" style="width: 100%;height: 150px;background-color: violet">
						<img src="da-nang.jpg" alt="" height="150" width="100%">
					</div>
					<div class="info_tour" style="width: 100%;height: 100px;background-color: #95B9C7">
						<p class="tour_name">Du lịch Đà Nẵng</p>
						<p>3 ngày 2 đêm</p>
						<p class="tour_price" style="color: red">4.000.000đ</p>
					</div>
				</div>
				<div class="anh1" style="width: 20%;height: 200px;padding: 25px">
					<div class="anh_tour" style="width: 100%;height: 150px;background-color: violet">
						<img src="da-nang.jpg" alt="" height="150" width="100%">
					</div>
					<div class="info_tour" style="width: 100%;height: 100px;background-color: #95B9C7">
						<p class="tour_name">Du lịch Đà Nẵng</p>
						<p>3 ngày 2 đêm</p>
						<p class="tour_price" style="color: red">4.000.000đ</p>
					</div>
				</div>
				<div class="anh1" style="width: 20%;height: 200px;padding: 25px">
					<div class="anh_tour" style="width: 100%;height: 150px;background-color: violet">
						<img src="da-nang.jpg" alt="" height="150" width="100%">
					</div>
					<div class="info_tour" style="width: 100%;height: 100px;background-color: #95B9C7">
						<p class="tour_name">Du lịch Đà Nẵng</p>
						<p>3 ngày 2 đêm</p>
						<p class="tour_price" style="color: red">4.000.000đ</p>
					</div>
				</div>
				
			</div>
			<div class="title" style="text-align: center;color: black;margin:0"><h1 style="padding-top: 100px;margin:0; color: #2554C7"><p id="hehee" style="margin:0px;">Tour hot nhất</p></h1></div>
			<div class="anh" style="width: 100%;height: 200px;display: flex;">
				<div class="anh1" style="width: 20%;height: 200px;padding: 25px">
					<div class="anh_tour" style="width: 100%;height: 150px;background-color: violet">
						<img src="da-nang.jpg" alt="" height="150" width="100%">
					</div>
					<div class="info_tour" style="width: 100%;height: 100px;background-color: #95B9C7">
						<p class="tour_name">Du lịch Đà Nẵng</p>
						<p>3 ngày 2 đêm</p>
						<p class="tour_price" style="color: red">4.000.000đ</p>
					</div>
				</div>
				<div class="anh1" style="width: 20%;height: 200px;padding: 25px">
					<div class="anh_tour" style="width: 100%;height: 150px;background-color: violet">
						<img src="da-nang.jpg" alt="" height="150" width="100%">
					</div>
					<div class="info_tour" style="width: 100%;height: 100px;background-color: #95B9C7">
						<p class="tour_name">Du lịch Đà Nẵng</p>
						<p>3 ngày 2 đêm</p>
						<p class="tour_price" style="color: red">4.000.000đ</p>
					</div>
				</div>
				<div class="anh1" style="width: 20%;height: 200px;padding: 25px">
					<div class="anh_tour" style="width: 100%;height: 150px;background-color: violet">
						<img src="da-nang.jpg" alt="" height="150" width="100%">
					</div>
					<div class="info_tour" style="width: 100%;height: 100px;background-color: #95B9C7">
						<p class="tour_name">Du lịch Đà Nẵng</p>
						<p>3 ngày 2 đêm</p>
						<p class="tour_price" style="color: red">4.000.000đ</p>
					</div>
				</div>
				<div class="anh1" style="width: 20%;height: 200px;padding: 25px">
					<div class="anh_tour" style="width: 100%;height: 150px;background-color: violet">
						<img src="da-nang.jpg" alt="" height="150" width="100%">
					</div>
					<div class="info_tour" style="width: 100%;height: 100px;background-color: #95B9C7">
						<p class="tour_name">Du lịch Đà Nẵng</p>
						<p>3 ngày 2 đêm</p>
						<p class="tour_price" style="color: red">4.000.000đ</p>
					</div>
				</div>
				
				
			</div>
		</div>
		<div class="footer">
			<div class="info" style="width: 50%; float: left;" >
				<img src="logo.jpg" alt="profile" height="100" width="100" style="float: left; margin-right: 10px">
				<h4 style="margin: 0px"><p>Công ty thương mại du lịch TravelAgent</p></h4>
				<p><strong>Địa chỉ:</strong> Km10, đường Nguyễn Trãi, Hà Nội, Việt Nam</p>
				<p><strong>Email:</strong> travelagent@gmail.com</p>
				<p><strong>SĐT:</strong> 19001234</p>
			</div>
			<div class="social_contact" style="float: right; margin-right: 100px">
				<h3 style="margin: 0px"><p>Follow Us!</p></h3>
				<button class="social_btn"><i class="fab fa-facebook-square" style="color: #2554C7"></i></button>	
				<button class="social_btn"><i class="fab fa-twitter-square" style="color: #157DEC"></i></button>	
				<button class="social_btn"><i class="fab fa-google-plus-square" style="color: #C35817"></i></button>	
			</div>
		</div>
	</div>
	<script>
		function handleSelectChange(event) {
		    var selectElement = event.target;
		    var value = selectElement.value;
		    var font;
		    if(value == 1){
		    	font = "Arial";
		    }else{
		    	if(value == 2){
		    		font = "Times New Roman";
		    	}
		    }
		    var x = document.getElementById("content");
    		var y = x.getElementsByTagName("P");
    		// var h1 = x.getElementsByTagName("H1");
    		// var ul = x.getElementsByTagName("UL");
    		// var li=x.getElementsByTagName("LI");
		    var i;
		    // ul.style.fontFamily = font;
		    for (i = 0; i < y.length; i++) {
		        y[i].style.fontFamily = font;
		         // ul[i].style.fontFamily = font;
		        // li[i].style.fontFamily = font;
		         // h1[i].style.fontFamily = font;
		    }
		}	
	</script> 	
	<script>
			function handleSelectChangeColor(event) {
		    var selectElement = event.target;
		    var value = selectElement.value;
		    var font;
		    if(value == 1){
		    	document.getElementById("content").style.color="red";
		    	document.getElementById("iddd").style.color="red";
		    	document.getElementById("hehe").style.color="red";
		    	document.getElementById("hehee").style.color="red";
		    	document.getElementById("login").style.color="red";
		    	document.getElementById("sign_up").style.color="red";



		    }else{
		    	if(value == 2){
		    	document.getElementById("content").style.color="blue";
		    	document.getElementById("iddd").style.color="blue";
		    	document.getElementById("hehe").style.color="blue";
		    	document.getElementById("hehee").style.color="blue";
		    	document.getElementById("login").style.color="blue";
		    	document.getElementById("sign_up").style.color="blue";
		    	}
		    }
		    // document.getElementById("content").style.color="red";
    		
		    // ul.style.fontFamily = font;
		    
		}	
	</script> 
</body>
</head>
<body>

</body>
</html>