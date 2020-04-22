<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 


<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<title>VerActividad</title>
</head>
<body>
	<div class="container mt-5 rounded border border-dark">
		<div class="row">
			<div class="col">
				<h1 class="text-center">${actividad.getNombre()}</h1>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col text-center font-weight-bold">Fecha Inicio</div>
			<div class="col text-center font-weight-bold">${actividad.getFecha_inicio()}</div>
		</div>
		<br>
		<div class="row">
			<div class="col text-center font-weight-bold">Dias Semana</div>
			<div class="col text-center font-weight-bold">${actividad.getDias()}</div>
		</div>
		<br>
		<div class="row">
			<div class="col text-center font-weight-bold">Horas</div>
			<div class="col text-center font-weight-bold">${actividad.getHoras()}</div>
		</div>
		<br>
		<div class="row">
			<div class="col text-center font-weight-bold">Max Participantes</div>
			<div class="col text-center font-weight-bold">${actividad.getMaxParticipantes()}</div>
		</div>
		<br>
		<div class="row">
			<div class="col text-center font-weight-bold">Precio</div>
			<div class="col text-center font-weight-bold">${actividad.getPrecio()} euros</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col text-center"><a href="ActualizarActividad?id=${actividad.getId()}" type="button" class="btn btn-primary btn-lg text-white">Editar</a></div>
			<div class="col text-center"><a href="EliminarActividad?id=${actividad.getId()}" type="button" class="btn btn-danger btn-lg">Borrar</a></div>
		</div>
		<br>
		<div class="row justify-content-center mb-5">
			<div class="col-2">
            	<a class="btn btn-primary btn-lg text-center" href="VerActividades" role="button">Volver</a>
            	
        	</div>
		</div>
		
	</div>
	
	
	<div class="container mt-5 mb-5 rounded border border-dark">
		
		<div class="row vertical align-items-center">
		
		<div class="col ">
		
		<h2>Formulario de inscripcion</h2>

			<form action="InscribirUsuario" method="POST">
    			<input type="hidden" value="${actividad.getId()}" name="idactividad">

    			<select name="idusuarios">
    			
        			<option value="0">Selecciona el usuario</option>
        	
        			<c:forEach items="${usuarios}" var="usuario">
        			
        				<option value="${usuario.getId()}">${usuario.getNombreApellido()} - ${usuario.getCodigo()}</option>
        				
        			</c:forEach>
        			
      			</select>

      			<input type="submit" value="Inscribir">

			</form>
		
		</div>
		
		<div class="col">
		
		<h3 class="text-center">Usuarios inscritos</h3>
		
		<table class="table table-striped table-bordered text-center">
		
		<c:forEach items="${actividad.getIscripciones()}" var="inscripcion">
		<tr>
		<td><h5>${inscripcion.getUsuario().getNombreApellido()} - ${inscripcion.getUsuario().getCodigo()} </h5></td>
		<td><a class="btn btn-danger btn-md text-center" href="BorrarInscripcion?idActividad=${actividad.getId()}&idUsuario=${inscripcion.getUsuario().getId()}" role="button">Borrar inscripcion</a></td>
		</tr> 
		</c:forEach>
		
		</table>
		
		
		
		
		</div>
		
		</div>
		
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>