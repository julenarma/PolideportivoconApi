package controlador;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
 * Servlet implementation class ModificarUsuario
 */
@WebServlet("/ModificarUsuario")
public class ModificarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//datuak jaso
		
		int idUsuario=Integer.parseInt(request.getParameter("id"));
		
		String nombreApellido=request.getParameter("nombreApellido");
		
		String dni=request.getParameter("dni");
		
		String codigo=request.getParameter("codigo");
		
		
		
		//sortu usuario objetu bat
		
		Usuario usuario=new Usuario();
		
		//setak egin
		usuario.setId(idUsuario);
		
		usuario.setNombreApellido(nombreApellido);
		
		usuario.setDni(dni);
		
		usuario.setCodigo(codigo);
		
		//Modeloa sortu
		
		ModeloUsuario modeloUsuario=new ModeloUsuario();
		
		//update egin
		
		modeloUsuario.update(usuario);
		
		//verUsuarios-eri deitu
		
		response.sendRedirect("verUsuario?id=" + idUsuario);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
	}

}
