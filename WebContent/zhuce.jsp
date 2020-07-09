<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>万从书屋_注册</title>
<style>
* {
				/*去除所有元素的默认边距和填充*/
				margin: 0;
				padding: 0;
				
			}
			
			#header {
				height: 100px;
				border-bottom: 1px solid #C09B4B;
				
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
			#box {
				width: 400px;
				height: 400px;
				border: 1px solid silver;
				text-align: center;
				border-radius: 20px;
				margin:50px auto;
				background: url(img/timg.jpg);
			}

			#username_span {
				color: gray;
				font-size: 15px;
			}

			#box input {
				width: 200px;
				height: 30px;
				font-size: 18px;
				margin-top: 20px;
				border-radius: 10px;
				outline: none;
				
			}
			#box .login{
			background-color: #C09B4B;
			border: 1px solid #cccccc;
			color:white;
			}
			#box .sp {
				margin-left: 100px;
			}

			.sp1 {
				width: 45px;
				height: 30px;
				background-color: gray;
				color: white;
				float: left;
				line-height: 30px;
				margin-top: 5px;
				margin-left: 15px;
			}
			#box #ok{
				margin-top: 30px;
				width: 100px;
				height: 40px;
				font-size: 24px;
				font-family: "楷体";
				font-weight: bold;
				border-radius: 10px;
				outline: none;
				border: 1px solid #E6E6E6;
			}
			#bottom {
				height: 250px;
				background: #000000;
				margin-top: 110px;
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
				bord
			}
			
			#bottom .con .guanyu {
				float: left;
				padding-left: 100px;
			}
</style>
<script type="text/javascript" src="zhuce.js">
	
</script>
</head>
<body>
<!-- 头部logo -->
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
					<a href="#">个人中心</a>
				</div>
				<div class="buycar">
					<img src="img/buycar.png" >
					<a href="#">购物车</a>
				</div>
			</div>
		
		</div>
		<form action="zhuce_suc.jsp" method="post">
		<div id="box">
			<input type="text" name="username" id="username" placeholder="用户名" />
			<br />
			<span id="username_span">
				6~18个字符，可以使用字母下划线数字，需要以字母开头
			</span>
			<br />
			<input type="password" name="password" id="password" value="" placeholder="密码" />
			<br />
			<div class="sp">
				<div class="sp1">弱</div>
				<div class="sp1">中</div>
				<div class="sp1">强</div>
			</div>
			<input type="password" name="" id="passwordagain" value="" placeholder="确认密码" />
			<br />
			<span id="password_span"></span>
			<br />
			
			<input type = "submit" value = "注册" name = "login" class='login'></input>
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