package Servlets;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.connexionUsuarios;

/**
 * Servlet implementation class registration
 */
@WebServlet("/registration")
public class registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("nombre");
		String lastName=request.getParameter("apellido");
		String email=request.getParameter("correo");
		String password=request.getParameter("contraseña");
		int years =2020- Integer.parseInt(request.getParameter("f-nacimientoa"));
		
		
		connexionUsuarios.register(name,lastName,email,password,years);
		
		request.getSession().setAttribute("name", name);
		request.getSession().setAttribute("lastname", lastName);
		request.getSession().setAttribute("email", email);
		request.getSession().setAttribute("password", password);
		request.getSession().setAttribute("years", years);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("principal.jsp");
		 requestDispatcher.include(request,response);
}
}
