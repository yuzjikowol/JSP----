<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <%
    String msg =null;
    request.setCharacterEncoding("utf-8");
    HttpSession ses =request.getSession();
    String id =(String) ses.getAttribute("id");
    msg="<p>あなたは、現在「"+id+"」でログインしています</p>";
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Sample</title>
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
<h1>サンプルページ</h1>
<p><%=msg%></p>
</body>
</html>