<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.sql.*" %>
    <%
    Class.forName("org.apach.derby.jdbc.EmbeddedDriver");
    Connection users =DriverManager.getConnection
    ("jdbc:derby:C:\\Users\\hayato\\MyDB;create=true");
    Statement state = users.createStatement();
    ResultSet result = state.executeQuery("select * from Users");
    String html ="<table border=\"1\">";
    html +="<tr><td>ID</td><td>パスワード</td></tr>";
    while(result.next()){
    	String id =result.getString("id");
    	String pass = result.getString("password");
    	html +="<tr><td>"+id+"</td>";
        html +="<td>"+pass+"</td></tr>";
    }
    html += "<table>";
    result.close();
    state.close();
    users.close();
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Database Access</title>
<style>
h1{
font-size:14pt;
font-weight: bold;
background-color:#DDF;
padding:3px;
}
</style>
</head>
<body>
<h1>MYデータベースアクセス</h1>
<h2>データ一覧</h2>
<%=html %>
<hr>
<h2>ユーザ追加</h2>
<form action="./AddUser" method="POST">
<table>
<tr>
<td>ログインID</td>
<td><input type="text"name="id"></td>
</tr>
<tr>
<td>パスワード</td>
<td><input type="password"name="pass"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="送信"></td>
</tr>
</table>
</form>
<hr>
<h2>ユーザー削除</h2>
<form action="./DelUser"method="POST">
<table>
<tr>
<td>ログインID</td>
<td><input type="text"name="id"></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="送信"></td>
</tr>
</table>
</form>
</body>
</html>