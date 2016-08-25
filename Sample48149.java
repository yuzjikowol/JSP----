package jp.tuyano.eclipsebook;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Sample48149
 */
@WebServlet("/Sample48149")
public class Sample48149 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();

        // HttpSessionオブジェクトの取得
        HttpSession session = request.getSession();

        // セッションからcountを取得
        Integer count = (Integer)session.getAttribute("count");

        // カウントの加算
        if(count == null) {
                count = new Integer(0);
        }
        count = new Integer(count.intValue() + 1);

        // countをセッションに格納
        session.setAttribute("count", count);

        out.println("count:" + count);

	}

	

}
