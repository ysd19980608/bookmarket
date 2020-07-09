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
	String id = request.getParameter("id");
	//连接数据库
	Class.forName("com.mysql.jdbc.Driver");
	String url ="jdbc:mysql://127.0.0.1:3306/bookmarket?serverTimezone=GMT";
	Connection connection = DriverManager.getConnection(url, "root", "123456");
	Statement stmt = connection.createStatement();
	String sql_del="delete from db_user where user_id= '"+id+"'";
	stmt.executeUpdate(sql_del);
	
}
catch(Exception e) {
	System.out.print("error!");
	e.printStackTrace();

}

%>
</body>
</html>