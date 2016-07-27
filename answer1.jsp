<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.*" %>
<%
  String user =request.getParameter("user");
  String pass =request.getParameter("pass");
  Cookie ck1 =new Cookie("username",user);
  Cookie ck2 =new Cookie("password",pass);
  ck1.setMaxAge(60*60*24*7);
  ck2.setMaxAge(60*60*24*7);
  response.addCookie(ck1);
  response.addCookie(ck2);
  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>sample</title>
<style>
h1{
  font-size: 14pt;
  font-weight:bould;
  background-color:#DDF;
  padding:3px;
}
</style>
</head>
<body>
<h1>Thank you</h1>
<p>
ありがとうございました。
</p>
</body>
</html>