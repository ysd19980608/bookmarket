<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/dingdan.css" />
</head>
<body>
<!-- 头部logo -->
		<div id="header">
			<div class="head">
				<img src="img/logo.png" class="logo1">
				<img src="img/logo1.png" class="logo2">

				<!--  搜索栏-->
				<div class="search">
					<input type="text" name="" id="searchput" placeholder="请输入" />
					<button id="searchbtn">搜 索</button>
				</div>
				<!-- 登录&&购物车 -->
				<div class="loginuser">
					<img src="img/2weima.jpg">
					<a href="#">手机扫码</a>
				</div>
				<div class="buycar">
					<img src="img/2weima.jpg">
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
				<a href="homelogin.jsp">万从书社 》 </a>
				<a href="gouwuche.jsp">购物车 》 </a>
				<a href="#">订单确定 </a>
			</div>
		</div>
		<!-- 订单管理 -->
		<div id="mainer">
			<div id="main">
				<!-- 左侧区域 -->
				<div class="left">
					<div class="lmess">
						<div class="ltop">付款方式</div>

						<div class="mui-input-row mui-radio ">

							<div class="buykind">
								<div class="buyfont">购物卡</div>
								<input name="radio" type="radio" checked>
								<label><img src="img/gouwuka.png"></label>
							</div>
							<div class="buykind">
								<div class="buyfont">网银</div>
								<input name="radio" type="radio" checked>
								<label><img src="img/vx.jpg"></label>
								<input name="radio" type="radio" checked>
								<label><img src="img/zfb.jpg"></label>
							</div>
							<div class="buykind" style="height: 120px;">
								<div class="buyfont">储蓄卡</div>
								<input name="radio" type="radio" checked>
								<label><img src="img/gsyh.png"></label>
								<input name="radio" type="radio" checked>
								<label><img src="img/zgyh.png"></label>
								<br />
								<input name="radio" type="radio" checked>
								<label><img src="img/pfyh.png"></label>
							</div>
						</div>
					</div>



				</div>
				<!-- 右侧区域 -->
				<div class="right">
					<div class="rtop">确认订单</div>
					<div class="r2">
						<div class="r2coll">
							我的商品
							<a href="#">更多商品</a>
						</div>
						<div class="r2long">
							<div class="r2name" style="border-top: 2px solid red;">名称</div>
							<div class="r2name">单价</div>
							<div class="r2name">数量</div>
							<div class="r2name">折扣</div>
							<div class="r2name">现价</div>
						</div>
						<div class="roller">
							<!-- 存放书籍信息区 -->
							<table>
								<!-- <tr>
									<td>
										<img alt="" src="img/book1.jpg"/>
										<br/>
										<font>十人快乐大家</font>
									</td>
									<td>28.9</td>
									<td>1</td>

									<td>60%</td>
									<td>19.9</td>
								</tr> -->
								<%
					
					try {
						//从session中获取username
						String username = session.getAttribute("sessionname").toString();  
						String booknum,bookimg,bookname,bookprice;
						
						//连接数据库
						Class.forName("com.mysql.jdbc.Driver");
						String url ="jdbc:mysql://127.0.0.1:3306/bookmarket?serverTimezone=GMT";
						Connection connection = DriverManager.getConnection(url, "root", "123456");
						Statement stmt = connection.createStatement();
						//通过username在数据库中查找相关信息
		 				ResultSet rs =stmt.executeQuery("select *from db_buyorder where user_id = '"+username+"'");
		 				//循环获取数据库中username的数据
		 				while(rs.next()){
		 					//从数据库中读出图片img 书名 数量 单价
		 					bookimg = rs.getString("order_img").trim();
		 					booknum = rs.getString("order_booknum").trim();
		 					bookname = rs.getString("order_bookname").trim();
		 					bookprice = rs.getString("order_bookprice").trim();
		 					//获取单价和数量，算出总价
		 					double num = Double.parseDouble(booknum);
		 					double price = Double.parseDouble(bookprice);
		 					double sum = num*price;	 					
		 					%>
		 					<!--为标签动态渲染  -->
		 					<tr id="goods" class="goods">
							<td align="center"><img alt="" src="<%=bookimg %>"><%=bookname %></td>
							<td align="center"><%=bookprice %></td>
							<td align="center">
								<font><%=booknum %></font>	
							</td>
							<td align="center"> 
								30%
							</td>
							<td align="center">
								<font><%=sum%></font>
							</td>
							</tr>
		 			<% 		
		 				}
		 				//关闭连接
		 				rs.close();
					}
					
					 catch(Exception e) {
						out.println("请登录！");
						out.print("<a href='login.jsp'>");
						out.print("登录");
						out.print("</a>");
						System.out.print("error!");
						e.printStackTrace();
		
					}

					%>
							</table>
						</div>
						<form action="dingdan_suc.jsp" method="post">
						<button class="readybuy">确认购买</button>
					</div>
				</div>
			</div>
		</div>

		<!-- 底部黑色-->
		<div id="bottom">
			<div class="con">
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