package jp.tuyano.eclipsebook;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String id =request.getParameter("id");
		String pass = request.getParameter("pass");
		try{
			Class.forName("org.apache.derby.jdbc.EmbeddedDriver");
			Connection users =DriverManager.getConnection
					("jdbc:derby:C:\\Users\\hayato\\MyDB;create=true");
			Statement state =users.createStatement();
		try{
			int res =state.executeUpdate
					("insert into Users (id,password) values ('"+id+"','"+pass+"')");
		}catch(Exception ex){
			ex.printStackTrace();
		}
		state.close();
	}catch(ClassNotFoundException e){
		e.printStackTrace();
	}catch(SQLException e){
		e.printStackTrace();
	}
	response.sendRedirect("sampleJSP.jsp");
	}
}
