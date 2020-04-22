package controlador;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.bean.Actividad;
import modelo.bean.Usuario;
import modelo.dao.ModeloActividad;
import modelo.dao.ModeloUsuario;

/**
 * Servlet implementation class verActividad
 */
@WebServlet("/verActividad")
public class verActividad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public verActividad() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int idActividad=Integer.parseInt(request.getParameter("id"));
		
		ModeloActividad modeloActividad=new ModeloActividad();
		Actividad actividad=modeloActividad.getConUsuariosInscritos(idActividad);
		
		ModeloUsuario modeloUsuario=new ModeloUsuario();	
		ArrayList<Usuario> usuarios=modeloUsuario.selectAll();
		
		request.setAttribute("actividad", actividad);
		request.setAttribute("usuarios", usuarios);
		
		request.getRequestDispatcher("verActividad.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
