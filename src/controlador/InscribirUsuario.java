package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.bean.Usuario;
import modelo.dao.ModeloInscripcion;
import modelo.dao.ModeloUsuario;

/**
 * Servlet implementation class InscribirUsuario
 */
@WebServlet("/InscribirUsuario")
public class InscribirUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InscribirUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idUsuario=Integer.parseInt(request.getParameter("idusuarios"));
		int idActividad=Integer.parseInt(request.getParameter("idactividad"));
		
		ModeloInscripcion modeloInscripcion=new ModeloInscripcion();
		
		if(!modeloInscripcion.estaInscrito(idUsuario, idActividad)) {
			modeloInscripcion.inscribir(idUsuario, idActividad);
		}
		response.sendRedirect("verActividad?id=" + idActividad);
		
		
	}

}
