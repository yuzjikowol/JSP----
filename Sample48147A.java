package jp.tuyano.eclipsebook;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
/**
 * Servlet implementation class Sample48147A
 */
@WebServlet("/Sample48147A")
public class Sample48147A extends HttpServlet {
	private static final long serialVersionUID = 1L;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sample48147A() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setAttribute("message", "hello");
		String disp = "/Sample48147B";
        RequestDispatcher dispatcher = request.getRequestDispatcher(disp);
        dispatcher.forward(request, response);

	}

}
