package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import util.citas.conexiónCitas;
import util.citas.horarioCitas;

/**
 * Servlet implementation class medicina
 */
@WebServlet("/medicina")
public class medicina extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public medicina() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		horarioCitas citasDipsonibles=new horarioCitas();
		citasDipsonibles=conexiónCitas.consultarCitas();
		
		String Dias[]= {"lun","mar","mie","jue","vie","sab"};
		String horas[]= {"7","9","11","2"};
		
		for(int i=0;i<4;i++) {
		for(int j=0;j<6;j++) {
			for(int k=0;k<4;k++) {
				System.out.println("leyendo"+i);
				if(citasDipsonibles.get(i,j,k)==null){
					request.getSession().setAttribute("c"+i+""+j+""+k,
							"No disponible"+i+""+j+""+k
							);
						}
				else {
					request.getSession().setAttribute("c"+i+""+j+""+k,
						citasDipsonibles.get(i,j,k).getDoctor()
						);
				}		
			}
		}
		}
		//error se llama desde principal
		String user=request.getParameter("email");
		
		String[] cita=conexiónCitas.leerCita(user);
		request.getSession().setAttribute("doctor",cita[1]);
		request.getSession().setAttribute("hora",cita[0]);
		if(cita[0]!=null &&cita[0].length()>1 ) {
			System.out.println(cita[0]);
			request.getSession().setAttribute("citasActivas","Activas");
		}
		else {
			request.getSession().setAttribute("citasActivas","NOActivas");
		}
		response.sendRedirect("medicina.jsp");
	}
}
