package jp.tuyano.eclipsebook;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
/**
 * Servlet implementation class Sample48148
 */
@WebServlet("/Sample48148")
public class Sample48148 extends HttpServlet {
	public static final long serialVersionUID = 1L;
       
   
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("message", "hello");

        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/48148.jsp");
        dispatcher.forward(request, response);

	}

}
