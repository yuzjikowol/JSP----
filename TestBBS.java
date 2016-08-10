import java.io.*;
   import java.util.*;
   import javax.servlet.*;
   import javax.servlet.http.*;
   
   public class TestBBS extends HttpServlet {
       private ArrayList<Message> messageList = new ArrayList<Message>();
   
       private String htmlEscape(String src) {
          return src.replace("&", "&amp;").replace("<", "&lt;")
              .replace(">", "&gt;");
      }
  
      @Override
      public void doGet(HttpServletRequest request, HttpServletResponse response)
          throws IOException, ServletException {
          response.setContentType("text/html;charset=UTF-8");
          PrintWriter out = response.getWriter();
          out.println("<html>");
          out.println("<head>");
          out.println("<title>�e�X�g�f����</title>");
          out.println("<head>");
          out.println("<body>");
          out.println("<h1>�e�X�g�f����</h1>");
          out.println("<form action='/testbbs/TestBBS' method='post'>");
          out.println("�n���h�����F<input type='text' name='handle'><br/>");
          out.println("<textarea name='message' rows='4' cols='60'>"
                      + "</textarea><br/>");
          out.println("<input type='submit'/>");
          out.println("</form>");
          out.println("<hr/>");
          for (Message message : messageList) {
              out.println("<p>" + htmlEscape(message.handle) + " ����</p>");
              out.println("<p>");
              out.println(htmlEscape(message.message).replace("\r\n", "<br/>"));
              out.println("</p><hr/>");
          }
          out.println("</body>");
         out.println("</html>");
      }
  
      @Override
      public void doPost(HttpServletRequest request, HttpServletResponse response)
          throws IOException, ServletException {
          request.setCharacterEncoding("UTF-8");
          Message newMessage = new Message(request.getParameter("handle"),
                                           request.getParameter("message"));
          messageList.add(0, newMessage);
          doGet(request, response);
      }
 }
