<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>登陆</title>
	<link rel="stylesheet" href="/css/login.css">
</head>
<body>
<div class="htmleaf-container">
	<div id="wrapper" class="login-page">
	  <div id="login_form" class="form">
		<form class="register-form" action="/register" method="post" onsubmit="return check_register()">
		  <input type="text" placeholder="用户名" id="r_user_name"/>
		  <input type="password" placeholder="密码" id="r_password" />
		  <input type="text" placeholder="电子邮件" id="r_emial"/>
		  <button id="create">创建账户</button>
		  <p class="message">已经有了一个账户? <a href="#">立刻登录</a></p>
		</form>
		<form class="login-form" action="/index" method="post" onsubmit="return check_login()">
		  <input type="text" placeholder="用户名" id="user_name"/>
		  <input type="password" placeholder="密码" id="password"/>
		  <button id="login" >登　录</button>
		  <p class="message">还没有账户? <a href="#">立刻创建</a></p>
		</form>
	  </div>
	</div>
</div>

<script src="/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="/js/login.js" type="text/javascript"></script>

</body>
</html>