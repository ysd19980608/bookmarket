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
			String username = session.getAttribute("sessionname").toString(); 	
			String useradd = request.getParameter("useradd").trim();
			String usertel = request.getParameter("usertel").trim(); 
			//连接数据库 
			Class.forName("com.mysql.jdbc.Driver");
			String url ="jdbc:mysql://127.0.0.1:3306/bookmarket?serverTimezone=GMT";
			Connection connection = DriverManager.getConnection(url, "root", "123456");
			Statement stmt = connection.createStatement();
			
			String sqltel = "update db_user set user_tel = '"+usertel+"' where user_name= '"+username+"'";
			PreparedStatement pst = connection.prepareStatement(sqltel);
			pst.executeUpdate();
			
			String sqladd = "update db_user set user_add = '"+useradd+"' where user_name= '"+username+"'";
			PreparedStatement pst1 = connection.prepareStatement(sqladd);
			pst1.executeUpdate();
			request.getSession().setAttribute("sessionadd",useradd);/*修改session中的add */
			request.getSession().setAttribute("sessiontel",usertel);/*修改session中的tel */
			out.print("<script type='text/javascript'>alert('修改成功！');window.location.href='geren.jsp'</script>"); 
								
								
							
		}
		catch(Exception e) {
							System.out.print("error!");
							e.printStackTrace();

		}
%>
</body>
</html>