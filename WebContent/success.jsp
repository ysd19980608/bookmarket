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
		String name = request.getParameter("name").trim();
		String password = request.getParameter("password").trim();
		String admir = "admir";
		//连接数据库
		Class.forName("com.mysql.jdbc.Driver");
		String url ="jdbc:mysql://127.0.0.1:3306/bookmarket?serverTimezone=GMT";
		Connection connection = DriverManager.getConnection(url, "root", "123456");
		Statement stmt = connection.createStatement();
		ResultSet rs =stmt.executeQuery("select *from db_user where user_name = '"+name+"'");
		if(rs.next()){
			rs = stmt.executeQuery("select * from db_user where user_name ='"+name+"' and user_password = '"+password+"'");
			if(rs.next()){
				
				request.getSession().setAttribute("sessionname",name);/*保存用户名   */
				request.getSession().setAttribute("sessionword",password);/* 保存密码  */
				
				request.getSession().setAttribute("sessiontel",rs.getString("user_tel"));//保存电话
				request.getSession().setAttribute("sessionadd",rs.getString("user_add"));//保存地址
				request.getSession().setAttribute("sessionid",rs.getString("user_id"));//保存ID
				//response.sendRedirect("login.jsp");
					if(admir.equals(name)){
						out.print("<script type='text/javascript'>window.location.href='guanliyuan.jsp'</script>");
					
					}
					else{
						out.print("<script type='text/javascript'>window.location.href='homelogin.jsp'</script>");
						
					}
	
			}
			
		}else{
			out.print("<script type='text/javascript'>alert('用户名或密码错误！');window.location.href='login.jsp'</script>");
		}
		
	}
	catch(Exception e) {
		System.out.print("error!");
		e.printStackTrace();

	}

		
	%>
</body>
</html>