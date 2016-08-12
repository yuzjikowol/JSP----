<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.*" %>
       <%
    String msg= "<p>ログイン失敗しました</p>";
    request.setCharacterEncoding("UTF-8");
    String name =request.getParameter("id");
    String pass =request.getParameter("pass");
    HttpSession ses =request.getSession();
    Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
    Connection users =DriverManager.getConnection
    ("jdbc:derby:C:\\Users\\hayato\\MyDB;create=true");
    Statement state = users.createStatement();
    ResultSet result = state.executeQuery("select * from Users");
    boolean Flag=false;    
    while(result.next()){
    	String id =result.getString("id");
    	String pass1 = result.getString("password");
    	if(name.equals(id)  && pass.equals(pass1)){
    	ses.setAttribute("Login","true");
    	ses.setAttribute("name","name");
    	msg ="";
    	msg ="<p>ログインしました</p>";
    	Flag=true;
    	response.setStatus(HttpServletResponse.SC_MOVED_TEMPORARILY);
    	response.setHeader("Location", "testBBS");
    	}    	
    }
    if (Flag=false){
    ses.setAttribute("Login","false");
    msg ="<p>ログイン失敗しました</p>";
    }
    result.close();
    state.close();
    users.close();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Signup</title>
<style>
h1{
font-size:14pt;
font-weight:bold;
background-color:#DDF;
padding:3px;
}
</style>
</head>
<body>
<h1>SIGNUP PAGE</h1>
<p><%=msg%></p>
</body>
</html>