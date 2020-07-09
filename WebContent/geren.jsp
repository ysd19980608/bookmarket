<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/geren.css" />
</head>
<body>
<!-- 头部logo -->
		<div id="header">
			<div class="head">
				<img src="img/logo.png" class="logo1" onclick = "window.location.href='homelogin.jsp'">
				<img src="img/logo1.png" class="logo2" onclick = "window.location.href='homelogin.jsp">
		
				<!--  搜索栏-->
				<div class="search">
					<input type="text" name="" id="searchput" placeholder="请输入" />
					<button id="searchbtn">搜  索</button>
				</div>
				<!-- 登录&&购物车 -->
				<div class="loginuser">
					<img src="img/2weima.jpg" >
					<a href="#">手机扫码</a>
				</div>
				<div class="buycar">
					<img src="img/2weima.jpg" >
					<a href="#">个人客户端</a>
					
				</div>
			</div>
		
		</div>
		<!-- 索引栏 -->
		<div id="index">
			<div class="zhuti">
				<div class="text">
					<font size="5px" color="white">主题市场</font>
				</div>
				<div class="example">
					<a href="#" class="nav">万从畅销榜</a>
					<a href="#" class="nav">新书榜</a>
					<a href="#" class="nav">社科榜</a>
					<a href="#" class="nav">文学榜</a>
					<a href="#" class="nav">儿童榜</a>
					<a href="#" class="nav">百科榜</a>
					<a href="#" class="nav">周边</a>
					<a href="#" class="nav">电子书</a>
				</div>
			</div>
		</div>
		<!-- 位置展示 -->
		<div id="orderadd">
			<div id="add">
				<font>您现在的位置：</font>
				<a href="homelogin.jsp">万从书社 > </a>
				<a href="geren.jsp">个人中心</a>
			</div>
		</div>
		<!-- 订单管理 -->
		<div id="mainer">
			<div id="main">
				<!-- 左侧区域 -->
				<div class="left">
					<div class="lmess">
						<div class="ltop">订单管理</div>
						<div class="l2">
							<ul>
								<li><a href="#">图书订单</a></li>
								<li><a href="#">百货订单</a></li>
								<li><a href="#">帮&nbsp;&nbsp;&nbsp;助</a></li>
							</ul>
						</div>
					</div>
					<div class="lmess">
						<div class="ltop">我的商品</div>
						<div class="l2">
							<ul>
								<li><a href="#">已购商品</a></li>
								<li><a href="#">我的收藏</a></li>
								<li><a href="#">降价通知</a></li>
							</ul>
						</div>
					</div>
					<div class="lmess">
						<div class="ltop">我的账户</div>
						<div class="l2">
							<ul>
								<li><a href="#">个人信息</a></li>
								<li><a href="#">账号和绑定设置</a></li>
								<li><a href="#">安全中心</a></li>
							</ul>
						</div>
					</div>
					<div class="lmess">
						<div class="ltop">我的钱包</div>
						<div class="l2">
							<ul>
								<li><a href="#">我的暂存款</a></li>
								<li><a href="#">我的购书卡</a></li>
								<li><a href="#">我的积分</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 右侧区域 -->
				<div class="right">
					<div class="rtop">我的万从</div>
					<div class="r1">
						<div class="rimg"><img src="img/2weima.jpg" /></div>
						<div class="rwelcom">
							<font>欢迎您，<a href="geren_xiugai.jsp">完善个人资料</a></font>
						</div>
						<div>
							<font>会员级别:<a href="#">普通会员</a></font>
						</div>
						<div>
							<font>账户积分: <font size="" color="red">0</font></font>
						</div>
						<div>
							<font>购物卡: <font size="" color="red">0</font></font>
						</div>
						<div>
							<font>暂存款: <font size="" color="red">0</font></font>
						</div>
					</div>
					<div class="r2">
						<div class="r2coll">
							我的收藏
							<a href="#">更多收藏</a>
						</div>
						<div class="r2long">
							<div class="r2name" style="border-top: 2px solid red;">名称</div>
							<div class="r2name">库存</div>
							<div class="r2name">定价</div>
							<div class="r2name">折扣</div>
							<div class="r2name">现价</div>
							<div class="r2name">操作</div>
						</div>
						<div class="r2news">暂无收藏</div>
					</div>
				</div>
			</div>
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