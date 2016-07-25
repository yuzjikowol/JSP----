<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.Calendar" %>
    <%@page import="java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>sample</title>
</head>
<body>
<h1>Welcome to JSP</h1>
<p>ようこそJSPの世界へ</p>
<p><%
     Calendar gc = Calendar.getInstance();
     SimpleDateFormat sf1 = new SimpleDateFormat("Gyyyy年 MM月dd日(E)");
     SimpleDateFormat sf2 = new SimpleDateFormat("ahh時 mm分");
     String s1 =sf1.format(gc.getTime());
     String s2 =sf2.format(gc.getTime());	
     out.println("今日は"+s1+"。<br>現在の時刻は、"+ s2+"です。");
     %></p>
</body>
</html>