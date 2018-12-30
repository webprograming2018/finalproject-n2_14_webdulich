<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<title>Sign up</title>
	<link rel="stylesheet" type="text/css" href="Signup.css">
</head>
<body>
<div class="wrap">
	<h2>Đăng ký tài khoản Travel Agent</h2>
	<form action="Signup" method="post">
		<input type="text" placeholder="Họ và Tên" name="name" required>
		<input type="text" placeholder="Email" name="email" required>
		<input type="password" placeholder="Mật khẩu" name="pass1" required>
		<input type="password" placeholder="Nhập lại mật khẩu" name="pass2" required>
		<input type="submit" value="Đăng ký">
	</form>
</div>
</body>
</html>