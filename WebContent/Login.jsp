<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <title>Login</title>
  <link rel="stylesheet" type="text/css" href="Login.css">
</head>
<body>
	<div class="wrap">
		<h2>Đăng nhập vào Travel Agent</h2>
		<form action="Login" method="post">
			<input type="text" placeholder="Email" name="email" required>
			<input type="password" placeholder="Mật khẩu" name="password" required>
			<input type="submit" value="Đăng nhập">
		</form>
		<a href=""><h4>Quên mật khẩu</h4></a>
	</div>
</body>
</html>