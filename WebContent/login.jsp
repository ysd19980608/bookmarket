<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>万从书屋_登录</title>
<style>
* {
	/*去除所有元素的默认边距和填充*/
	margin: 0;
	padding: 0;
}

#header {
	height: 100px;
	border:1px solid #C09B4B;
}

#header .head {
	width: 1300px;
	height: 100px;
	margin: auto;
	/* 居中*/
}

#header .head .logo1 {
	height: 90px;
	float: left;
}

#header .head .logo2 {
	height: 90px;
	width: 90px;
	padding-left: 40px;
	float: left;
}

#header .head .search {
	height: 40px;
	width: 500px;
	float: left;
	margin-top: 25px;
	margin-left: 150px;
	border-color: red;
	border-radius: 6px;
	border: 2px solid #C09B4B;

}

#header .head .search #searchput {
	height: 30px;
	width: 390px;
	margin-top: 5px;
	margin-left: 5px;
	border: 0px;
	outline: none;
	font-size: 15px;
	float: left;
}

#header .head .search #searchbtn {
	height: 44px;
	width: 105px;
	border: 0px;
	text-align: center;
	color: white;
	background-color: #C09B4B;
	border-radius: 6px;
	font-family: "楷体";
	font-size: 20px;
	font-weight: bold;
	margin-top: -2px;
	outline: none;
}

#header .loginuser {
	height: 25px;
	width: 110px;
	float: left;
	margin-top: 35px;
	margin-left: 50px;
	background-color: #F8F8F8;
}

#header .loginuser img {
	height: 20px;
	margin-top: 2px;
	margin-left: 3px;
	float: left;
}

#header .loginuser a {
	color: black;
	text-decoration: none;
	height: 20px;
	font-size: 12px;
	text-align: center;
	margin-left: 15px;

}

#header .buycar {
	height: 25px;
	width: 110px;
	float: left;
	margin-top: 35px;
	margin-left: 20px;
	background-color: #F8F8F8;
}

#header .buycar img {
	height: 20px;
	margin-top: 2px;
	margin-left: 3px;
	float: left;
}

#header .buycar a {
	color: black;
	text-decoration: none;
	height: 20px;
	font-size: 12px;
	text-align: center;
	margin-left: 15px;
}
#log{
	width :400px;
	height:500px;
	border: 1px solid #C09B4B;
	margin: 20px auto;
	border-radius:20px;
	background: url(img/timg.jpg);
}

#log .ipt1{
	height:30px;
	width:100px;
	background-color:write;
	margin-left:20px;
	margin-top:30px;
	border-radius: 10px;
	outline: none;
	font-size: 18px;
}
#log .tr1 input{
	background-color: #C09B4B;
	border: 1px solid #cccccc;
	color:white;
	outline: none;
	border-radius: 6px;
	}
#tab1{
	margin:1px auto;
}
#bottom {
	height: 250px;
	background: #000000;
	margin-top:10px;
}

#bottom .con {
	width: 1500px;
	height: 200px;
	margin: auto;
	padding-top: 50px;
}

#bottom .con .yewu {
	width: 802px;
	float: left;
}

#bottom .con .guanyu {
	float: left;
	padding-left: 100px;

</style>
<script type="text/javascript">
	window.onload = function(){
		
	}
</script>
</head>
<body>
	<div id="header">
			<div class="head">
				<img src="img/logo.png" class="logo1" onclick = "window.location.href='home.html'">
				<img src="img/logo1.png" class="logo2" onclick = "window.location.href='home.html'">

				<!--  搜索栏-->
				<div class="search">
					<input type="text" name="" id="searchput" placeholder="请输入" />
					<button id="searchbtn">搜  索</button>
				</div>
				<!-- 登录&&购物车 -->
				<div class="loginuser">
					<img src="img/user.png" >
					<a href="zhuce.jsp">个人中心</a>
				</div>
				<div class="buycar">
					<img src="img/buycar.png" >
					<a href="zhuce.jsp">购物车</a>
				</div>
			</div>

		</div>
		
		<div id="log">
			<h2 align = "center" style = "margin-top:150px;">登陆界面</h2>
			<form action="success.jsp" method="post">
			<table id="tab1">
				<tr>
					<td>用户名：</td>
					<td><input type = "text" name = "name"></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><input type = "password" name = "password"></td>
				</tr>
				<tr class="tr1">
					<td><input type = "submit" value = "登录" name = "login" class="ipt1"></td>
					<td><input type = "reset" vale = "重置" name = "reset" class="ipt1"></td>
				</tr>
			</table>
			<p align ="center">
				<a href ="zhuce.jsp" color = blue>注册用户</a>
			</p>
		</div>
	
	<!-- 底部黑色-->
		<div id="bottom">
			<div class = "con">
				<div class="yewu">
					<br />
					<font size="6" color="#A9A9A9">业务咨询:</font>
					<font size="6" color="#A9A9A9">0898-660888</font>
					<br />
					<font size="4" color="#A9A9A9">苏州昆山</font>
					<br />
		 			<font size="4" color="#A9A9A9">QQ601330647</font>
				</div>
				<div class="guanyu">
					
					<table border="0" cellspacing="" cellpadding="" style="color: #A9A9A9;">
						<tr height="50px">
							<th width="120px">关于我们</th>
							<th width="140px">我们的服务</th>
							<th width="120px">新闻资讯</th>
							<th width="120px">伙伴招募</th>
						</tr>
						<tr align="center">
							<td>Data</td>
							<td>Data</td>
							<td>Data</td>
							<td>Data</td>
						</tr>
						<tr align="center">
							<td>Data</td>
							<td>Data</td>
							<td>Data</td>
							<td>Data</td>
						</tr>
						<tr align="center">
							<td>Data</td>
							<td>Data</td>
							<td>Data</td>
							<td>Data</td>
						</tr>
						<tr align="center">
							<td>Data</td>
							<td>Data</td>
							<td></td>
							<td>Data</td>
						</tr>
						<tr align="center">
							<td>Data</td>
							<td>Data</td>
							<td></td>
							<td></td>
						</tr>
						<tr align="center">
							<td></td>
							<td>Data</td>
							<td></td>
							<td></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
</body>
</html>