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
<link rel="stylesheet" type="text/css" href="css/guanliyuan.css"/>

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
					<font size="5px" color="white">管理界面</font>
				</div>
				<div class="example">
					
					<a href="guanliyuan_kucun.jsp" class="nav">库存</a>
					<a href="#" class="nav">用户信息</a>
					<a href="guanliyuan_dingdan.jsp" class="nav">订单</a>
					
				</div>
			</div>
		</div>
		<!-- 位置展示 -->
			<div id="orderadd">
				<div id="add">
					<font>您现在的位置：</font>
					<a href="#">用户信息  </a>
					
				</div>
			</div>
			<!-- 订单管理 -->
			<div id="mainer">
				<div id="main">	
					<!-- 右侧区域 -->
					<div class="right">
						<div class="rtop">用户管理</div>	
							<div class="r2">
								<div class="r2coll">
									全部用户
									<a href="#">更多</a>
								</div>
								<div class="r2long">
									<div class="r2name" style="border-top: 2px solid red;">用户编号</div>
									<div class="r2name">用户昵称</div>
									<div class="r2name">用户密码</div>
									<div class="r2name">用户电话</div>
									<div class="r2name">用户地址</div>
									<div class="r2name">操作</div>
								</div>
								<div  class="roller" >
									<!-- 存放书籍信息区 -->
									<table >
										<!-- <tr>
											<td>Data</td>
											<td>Data</td>
											<td>Data</td>
											<td>Data</td>
											<td>Data</td>
											<td>Data</td>
										</tr> -->
										<%
										try {
											String userid = null;
											//连接数据库
											Class.forName("com.mysql.jdbc.Driver");
											String url ="jdbc:mysql://127.0.0.1:3306/bookmarket?serverTimezone=GMT";
											Connection connection = DriverManager.getConnection(url, "root", "123456");
											Statement stmt = connection.createStatement();
											ResultSet rs =stmt.executeQuery("select *from db_user ");
											
											
											while(rs.next()){
												//每次循环获取数据
												userid = rs.getString("user_id");
												String username = rs.getString("user_name");
												String userpassword = rs.getString("user_password");
												String usertel = rs.getString("user_tel");
												String useradd = rs.getString("user_add");
												/* String sql_del="delete from db_user where user_id= '"+userid+"'";
												stmt.executeUpdate(sql_del); */
												%>
												<tr>
													<td><%=userid %></td>
													<td><%=username %></td>
													<td><%=userpassword %></td>
													<td><%=usertel %></td>
													<td><%=useradd %></td>
													<td>
														<button onclick="del()">X</button>
													</td>
												</tr>
											<%
											}
											
										}
										catch(Exception e) {
											System.out.print("error!");
											e.printStackTrace();

										}
										%>
									</table>
									
								</div>
								
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