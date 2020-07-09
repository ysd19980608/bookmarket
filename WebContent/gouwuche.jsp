<%@ page import = "java.sql.*" %>
<%@ page import = "javax.sql.*" %>
<%@ page import = "javax.naming.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>购物车</title>
<link rel="stylesheet" type="text/css" href="css/gouwuche1.css"/>
<script type="text/javascript" src="js/gouwuche.js"></script>
<script type="text/javascript">
	window.onload = function(){
		
		function Buyallbook(){
			//点击购买按钮，将购买信息 购买人，书籍img，书籍名，数量，单价，总价，传递到db_buyorder中
			<%
				
			%>
		}
		
		function addbook(name,img,price){
			//购买书籍，将书籍信息放到 相关信息有 ： 书名，书img的src，单价，个数1 放入 db_buyorder中
		}
	}
</script>
</head>
<body>
<head>
		<meta charset="utf-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/gouwuche1.css"/>
		<script type="text/javascript" src="js/gouwuche.js"></script>
	</head>
	<body>
		<!-- 头部logo -->
		<div id="header">
			<div class="head">
				<img src="img/logo.png" class="logo1">
				<img src="img/logo1.png" class="logo2">
			</div>
		</div>
		<!-- 我的购物车红色箭头 -->
		<div id="longred">
			<div id="long">
				<div class="mybycar">
					<img src="img/buycar.png" >&nbsp;我的购物车
				</div>
					
				<div id="arrow"></div>
			</div>
		</div>
		<!-- 购物车空间 -->
		<div id="buyer">
			<!--这是一个滚动框  -->
			<div style="height: 500px; overflow: auto; width:1320px;margin:auto;border:2px solid #cccccc;border-radius:8px;">
			<div class="buy">
				<table  class="buytab" border ="0" >
					 <tr>
						<th width='250px'>商品</th>
						<th>单价</th>
						<th>数量</th>
						<th>金额</th>
						<th>删除</th>
					</tr>
					 <!--<tr id="goods" class="goods">
						<td ><img alt="" src="img/book1.jpg">面模</td>
						<td>100</td>
						<td >
							<input type="button" value="-" id="jian" onclick="" />
							<input id="text2" type="text" size="1" value="1" />
							<input type="button" value="+" id="jia" onclick="" />
						</td>
						<td align="center"> 
							<input id="money" size="1"  value="80" />
						</td>
						<td align="center">
							<input type="button" value="X" />
						</td>
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
								<input type="button" value="-" id="jian" onclick="" />
								<input id="text2" type="text" size="1" value="<%=booknum %>" />
								<input type="button" value="+" id="jia" onclick="" />
							</td>
							<td align="center"> 
								<%=sum%>
							</td>
							<td align="center">
								<input type="button" value="X" />
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
			</div>
		</div>
		<!-- 继续购物 -->
		<div id="againer">
			<div class="again">
				<button type="button" onclick="window.location.href='homelogin.jsp'"> >&nbsp;继续购物</button>
				
				<button type="button" onclick="window.location.href='dingdan.jsp'" class="readbuy"> 确认订单</button>
			</div>
		</div>
		<!-- 推荐商品 -->
		<div id="gooder">
			<div id="good">
				<div class="good">
					<img src="img/good.png" >
					<font>好书推荐</font>
					</div>
					<!-- 精品好书区域 -->
					<div class="goodbook">
						<a href="#">
							<img src="img/book1.jpg" >
							<font class="font1">轻松诙谐诉说人生道理</font>
							<br />
							<font class="font2">￥19.8</font>
							<font class="font3">￥28.8</font>
							<button id="book1">购买</button>
						</a>
					</div>
					<div class="goodbook">
						<a href="#">
							<img src="img/book2.jpg" >
							<font class="font1">轻松诙谐诉说人生道理</font>
							<br />
							<font class="font2">￥19.8</font>
							<font class="font3">￥28.8</font>
							<button id="book2">购买</button>
						</a>
					</div>
					<div class="goodbook">
						<a href="#">
							<img src="img/book3.jpg" >
							<font class="font1">轻松诙谐诉说人生道理</font>
							<br />
							<font class="font2">￥19.8</font>
							<font class="font3">￥28.8</font>
							<button>购买</button>
						</a>
					</div>
					<div class="goodbook">
						<a href="#">
							<img src="img/hotbook1.jpg" >
							<font class="font1">轻松诙谐诉说人生道理</font>
							<br />
							<font class="font2">￥19.8</font>
							<font class="font3">￥28.8</font>
							<button>购买</button>
						</a>
					</div>
					<div class="goodbook">
						<a href="#">
							<img src="img/hotbook2.jpg" >
							<font class="font1">轻松诙谐诉说人生道理</font>
							<br />
							<font class="font2">￥19.8</font>
							<font class="font3">￥28.8</font>
							<button>购买</button>
						</a>
					</div>
					<div class="goodbook">
						<a href="#">
							<img src="img/hotbook3.jpg" >
							<font class="font1">轻松诙谐诉说人生道理</font>
							<br />
							<font class="font2">￥19.8</font>
							<font class="font3">￥28.8</font>
							<button>购买</button>
						</a>
					</div>
					<div class="goodbook">
						<a href="#">
							<img src="img/hotbook4.jpg" >
							<font class="font1">轻松诙谐诉说人生道理</font>
							<br />
							<font class="font2">￥19.8</font>
							<font class="font3">￥28.8</font>
							<button>购买</button>
						</a>
					</div>
					<div class="goodbook">
						<a href="#">
							<img src="img/hotbook5.jpg" >
							<font class="font1">轻松诙谐诉说人生道理</font>
							<br />
							<font class="font2">￥19.8</font>
							<font class="font3">￥28.8</font>
							<button>购买</button>
						</a>
					</div>
					<div class="goodbook">
						<a href="#">
							<img src="img/hotbook6.jpg" >
							<font class="font1">轻松诙谐诉说人生道理</font>
							<br />
							<font class="font2">￥19.8</font>
							<font class="font3">￥28.8</font>
							<button>购买</button>
						</a>
					</div>
					<div class="goodbook">
						<a href="#">
							<img src="img/hotbook1.jpg" >
							<font class="font1">轻松诙谐诉说人生道理</font>
							<br />
							<font class="font2">￥19.8</font>
							<font class="font3">￥28.8</font>
							<button>购买</button>
						</a>
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