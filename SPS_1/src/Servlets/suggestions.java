package Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.connexionUsuarios;
/**
 * Servlet implementation class suggestions
 */
@WebServlet("/suggestions")
public class suggestions extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suggestions() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sug=request.getParameter("comentarios");
		String tipo=request.getParameter("r-comentarios");
		
		connexionUsuarios.recordSuggestion(tipo+"* "+sug);
		request.getSession().setAttribute("mensaje", "true");
		response.sendRedirect("principal.jsp");

	}
}
