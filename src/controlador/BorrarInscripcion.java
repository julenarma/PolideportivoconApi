package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.dao.ModeloInscripcion;

/**
 * Servlet implementation class BorrarInscripcion
 */
@WebServlet("/BorrarInscripcion")
public class BorrarInscripcion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BorrarInscripcion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		int idActividad=Integer.parseInt(request.getParameter("idActividad"));
		int idUsuario=Integer.parseInt(request.getParameter("idUsuario"));
		
		ModeloInscripcion modeloInscripcion=new ModeloInscripcion();
		modeloInscripcion.delete(idActividad, idUsuario);
		
		response.sendRedirect("verActividad?id=" + idActividad);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
