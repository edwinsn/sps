
package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.citas.conexiónCitas;

/**
 * Servlet implementation class programarCita
 */
@WebServlet("/programarCita")
public class programarCita extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public programarCita() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user=request.getParameter("user");
		String hora=request.getParameter("hora");
		String doctor=request.getParameter("doctor");
		
		conexiónCitas.registrarCita(hora,doctor,user);
	
		//agregar un argumento para editar cita(opcion y la cita como tal)
		request.setAttribute("citasActivas", "Activas");
		request.setAttribute("hora", hora);
		request.setAttribute("doctor", doctor);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("medicina.jsp");
		requestDispatcher.include(request,response);		
	
	}

}
