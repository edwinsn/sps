package Servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class saludFisica
 */
@WebServlet("/saludFisica")
public class saludFisica extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public saludFisica() {
        super();
        // TODO Auto-generated constructor stub
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			int years=Integer.parseInt(request.getParameter("years"));
			if(years>50) {
				RequestDispatcher requestDispatcher = request.getRequestDispatcher("adultom.jsp");
				requestDispatcher.include(request,response);		
			
		}
		else {
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("adulto.jsp");
			requestDispatcher.include(request,response);
		}
		}catch(NumberFormatException e){
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("adulto.jsp");
			requestDispatcher.include(request,response);		
			
		}
	}
}
