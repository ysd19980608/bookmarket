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
</head>
<body>
<%
	try {
		//获取数量
		String booknum = request.getParameter("num").trim();
		//获取用户name
		String username = session.getAttribute("sessionname").toString();
		//增添参数
		String img = "img/book2.jpg";
		String bookname= "未来中国";
		String bookprice = "21.8";
		double number = Math.floor(Math.random()*1000);
		//连接数据库
		Class.forName("com.mysql.jdbc.Driver");
		String url ="jdbc:mysql://127.0.0.1:3306/bookmarket?serverTimezone=GMT";
		Connection connection = DriverManager.getConnection(url, "root", "123456");
		Statement stmt = connection.createStatement();
		
		String condition = "insert into db_buyorder(order_img,order_bookname,order_booknum,order_bookprice,user_id) values('"+img+"','"+bookname+"','"+booknum+"','"+bookprice+"','"+username+"')";
		stmt.executeUpdate(condition); 
		out.print("<script type='text/javascript'>alert('购买成功！');window.location.href='tushu2.jsp'</script>");
		 
	}
	catch(Exception e) {
		out.println("<script type='text/javascript'>alert('请先登录！');window.location.href='login.jsp'</script>");
		System.out.print("error!");
		e.printStackTrace();
		
	}

		
	%>
</body>
</html>