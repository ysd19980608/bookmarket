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
		String username = request.getParameter("username").trim();
		String password = request.getParameter("password").trim(); 
		double number = Math.floor(Math.random()*100000);
		//连接数据库
		Class.forName("com.mysql.jdbc.Driver");
		String url ="jdbc:mysql://127.0.0.1:3306/bookmarket?serverTimezone=GMT";
		Connection connection = DriverManager.getConnection(url, "root", "123456");
		Statement stmt = connection.createStatement();

		 ResultSet rs =stmt.executeQuery("select *from db_user where user_name = '"+username+"'");
		
		 if(rs.next()){
			 out.print("<script type='text/javascript'>alert('该用户名已经存在！');window.location.href='zhuce.jsp'</script>");
		}
		if(username == ""){
			out.print("<script type='text/javascript'>alert('请输入用户名！');</script>)");
		}
		if(password == ""){
			out.print("<script type='text/javascript'>alert('请输入密码！');</script>)");
		}
		 else{	
			String condition = "insert into db_user(user_id,user_name,user_password) values('"+number+"','"+username+"','"+password+"')";
			stmt.executeUpdate(condition); 
			out.print("<script type='text/javascript'>alert('注册成功！');window.location.href='login.jsp'</script>");
		}  
	}
	catch(Exception e) {
		out.println("出错@");
		System.out.print("error!");
		e.printStackTrace();
		
	}

		
	%>
</body>
</html>