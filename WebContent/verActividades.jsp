<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    
    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Actividades</title>
  </head>
  <body>
  <div class="container">
  
  <h1 class="text-center">Actividades</h1>
  
  <div class="row justify-content-center align-items-center">
  
  <div class="col-4 text-center">
  
  <form action="BuscarActividad" method="POST">
  
  		<div class="form-group">
        	<input type="text" class="form-control" id="buscaractividad" name="buscaractividad" placeholder="Buscar actividad">
       	    <button type="submit" class="btn btn-primary">Submit</button>
  		</div>
  	
	</form>
  
  </div>
  
  </div>
  
  <div class="row justify-content-center mt-2 text-center">
  <div class="col">
  
 <table class="table table-striped table-bordered">
  <thead>
    <tr>
      <th scope="col">NOMBRE</th>
      <th scope="col">FECHA INICIO</th>
      <th scope="col">DIAS SEMANA</th>
      <th scope="col">INSKRIPZIO KOPURUA</th>
      <th scope="col">ACCIONES</th>
    </tr>
  </thead>
  <tbody>
  
  <c:forEach items="${actividades}" var="actividad">
  
   <tr>
      <th>${actividad.getNombre()}</th>
      <td>${actividad.getFecha_inicio()}</td>
      <td>${actividad.getDias()}</td>
      <td><h2>
  		  		<span class="badge badge-light"></span>
		  </h2>
	  </td>
      <td>
      	<a class="btn btn-primary btn-md" href="verActividad?id=${actividad.getId()}">VER</a>
      	<a class="btn btn-danger btn-md" href="EliminarActividad?id=${actividad.getId()}" role="button">Borrar</a> 
      	<a class="btn btn-warning btn-md text-white" href="ActualizarActividad?id=${actividad.getId()}" role="button">Editar</a> 
      </td>
    </tr>
  
  </c:forEach>
  
   
  
  </tbody>
</table>
  
  </div>
  </div>
  
  <div class="row justify-content-center text-center mt-3">
  
  <div class="col-3">
  
  <a class="btn btn-success btn-md text-white" href="CrearActividad">Crear</a>
  <a class="btn btn-warning btn-md text-white" href="Home">Volver</a>
  
  </div>
  
  </div>
  
  </div>
   

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>