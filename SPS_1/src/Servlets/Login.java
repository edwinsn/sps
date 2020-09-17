package Servlets;
import java.util.ArrayList;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.connexionUsuarios;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String user=request.getParameter("UserName");
		String password=request.getParameter("password");

		if(connexionUsuarios.checkUser(user,password)) {
			ArrayList<String> userData=connexionUsuarios.getUser(user);
			request.getSession().setAttribute("name", userData.get(0));
			request.getSession().setAttribute("lastname", userData.get(1));
			request.getSession().setAttribute("email", user);
			request.getSession().setAttribute("password", userData.get(2));
			request.getSession().setAttribute("years", userData.get(3));

			RequestDispatcher requestDispatcher = request.getRequestDispatcher("principal.jsp");
			requestDispatcher.include(request,response);		
			 }
		else {
			request.setAttribute("invalidUser", "Usuario o Contrasena invalidos");
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("Login.jsp");
			requestDispatcher.include(request,response);
		}
	}
}
