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
import modelo.dao.ModeloActividad;

/**
 * Servlet implementation class InsertarActividad
 */
@WebServlet("/InsertarActividad")
public class InsertarActividad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertarActividad() {
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
		
		//datuak jaso
		
		String nombre=request.getParameter("nombre");
		
		Date fechaInicio=null;
		
		
		String dias=request.getParameter("dias_semana");
		
		int horas=Integer.parseInt(request.getParameter("horas"));
		
		int maxParticipantes=Integer.parseInt(request.getParameter("max_participantes"));
		
		Double precio=Double.parseDouble(request.getParameter("precio"));
		
		//sortu actividade objetu bat
		
		Actividad actividad=new Actividad();
		
		//jasotako datuekin setak egin
		
		actividad.setNombre(nombre);
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy/MM/dd");
		
		try {
			fechaInicio=sdf.parse(request.getParameter("fecha_inicio"));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		actividad.setFecha_inicio(fechaInicio);
		
		actividad.setDias(dias);
		
		actividad.setHoras(horas);
		
		actividad.setMaxParticipantes(maxParticipantes);
		
		actividad.setPrecio(precio);
		
		//modeloa sortu
		
		ModeloActividad modeloActividad=new ModeloActividad();
		
		//inserta egin
		
		modeloActividad.insert(actividad);
		
		//VerActividades kontrolatzailerai deitu
		response.sendRedirect("VerActividades");
		
	}

}
