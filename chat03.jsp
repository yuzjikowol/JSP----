<%@ page language="java" contentType="text/html; charset=Shift_JIS"
    pageEncoding="UTF-8"%>
    
    <%!   
    StringBuffer message = new StringBuffer("");
%>
<%
request.setCharacterEncoding("utf-8");
HttpSession ses =request.getSession();
String id =(String) ses.getAttribute("id");
    //if(request.getParameter("name") == null || request.getParameter("name") == "") {
        //session.setAttribute("name", "");
    //}
    if(request.getParameter("id") != null) {
        //String name = new String(request.getParameter("name").getBytes("ISO-8859-1"),"JISAutoDetect");
        //session.setAttribute("name", name);
        String name = new String(request.getParameter("id").getBytes("ISO-8859-1"),"JISAutoDetect");
        session.setAttribute("name", id);
        message.append(name);
        message.append("&gt; ");
        message.append(new String(request.getParameter("message").getBytes("ISO-8859-1"),"JISAutoDetect"));
        message.append("<br/>");
    }
    if(request.getParameter("reset") != null && request.getParameter("reset").equals("true")) {
        message = new StringBuffer("");
    }
%>

   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Chat</title>
</head>
<body>

<h1>Chat</h1>
    <form action="chat03.jsp">
        名前 <input  name="id" size="10" value="<%= session.getAttribute("id") %>" readonly="readonly"/>
        <br/>
        メッセージ <input type="text" name="message" value="" size="40"/>
        <br/>
        <input type="submit" value="送信"/>
        <input type="reset" value="クリア"/>
    </form>
    <form action="chat03.jsp">
        <input type="hidden" name="reset" value="true"/>
        <input type="submit" value="履歴クリア"/>
    </form>
    <hr/>
    <%= message.toString() %>
</body>
</html>