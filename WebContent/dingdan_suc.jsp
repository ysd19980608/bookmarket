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
		//从session中获取username
		String username = session.getAttribute("sessionname").toString();
		String booknum,bookimg,bookname,bookprice;
		//连接数据库
		Class.forName("com.mysql.jdbc.Driver");
		String url ="jdbc:mysql://127.0.0.1:3306/bookmarket?serverTimezone=GMT";
		Connection connection = DriverManager.getConnection(url, "root", "123456");
		Statement stmt = connection.createStatement();
		ResultSet rs =stmt.executeQuery("select *from db_buyorder where user_id = '"+username+"'");
		//将购物车数据循环出来逐一添加到订单数据库内
		while(rs.next()){	
				Statement stmt2 = connection.createStatement();
				//从数据库中读出  书名 数量 单价
				bookname = rs.getString("order_bookname").trim();
				booknum = rs.getString("order_booknum").trim();
				bookprice = rs.getString("order_bookprice").trim();
				//获取单价和数量，算出总价
				double num = Double.parseDouble(booknum);
				double price = Double.parseDouble(bookprice);
				double sum = num*price;
				String con = "insert into db_order(book_name,user_name,book_number,book_price,order_money) values('"+bookname+"','"+username+"','"+booknum+"','"+bookprice+"','"+sum+"')";
				stmt2.executeUpdate(con);
		}
		
		out.print("<script type='text/javascript'>alert('购买成功！');window.location.href='homelogin.jsp'</script>"); 
	}
	catch(Exception e) {
		out.println("出错@");
		System.out.print("error!");
		e.printStackTrace();
		
	}

		
	%>
</body>
</html>