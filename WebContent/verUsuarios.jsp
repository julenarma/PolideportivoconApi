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

    <title>VerUsuarios</title>
  </head>
  <body>
  <div class="container">
  
  <h1 class="text-center">Usuarios</h1>
  
   <div class="row justify-content-center align-items-center">
  
  <div class="col-4 text-center">
  
  <form action="BuscarUsuario" method="POST">
  
  		<div class="form-group">
        	<input type="text" class="form-control" id="buscarusuario" name="buscarusuario" placeholder="Buscar usuarios">
       	    <button type="submit" class="btn btn-primary">Submit</button>
  		</div>
  	
	</form>
  
  </div>
  
  </div>
  
  <div class="row justify-content-center text-center mt-2">
  
  <div class="col">
  
  <table class="table table-striped table-bordered">
  
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">USUARIO</th>
      <th scope="col">DNI</th>
      <th scope="col">CODIGO</th>
      <th scope="col">ACCIONES</th>
    </tr>
  </thead>
   <c:forEach items="${usuarios}" var="usuario">
   
    <tr>
  <td>${usuario.getId()}</td>
  <td><a href="verUsuario?id=${usuario.getId()}">${usuario.getNombreApellido()}</a></td>
  <td>${usuario.getDni()} </td>
  <td>${usuario.getCodigo()} </td>
  <td>
  		<a class="btn btn-success text-white btn-md" href="ActualizarUsuario?id=${usuario.getId()}" role="button">Editar</a>
  		<a class="btn btn-danger btn-md" href="EliminarUsuario?id=${usuario.getId()}" role="button">Borrar</a>
  </td>
  </tr>
   
   </c:forEach>
  </table>
  
  </div>
  </div>
  
    <div class="row justify-content-center text-center mt-3 mb-3">
  
  <div class="col-3">
  
  <a class="btn btn-success btn-md text-white" href="CrearUsuario">Crear</a>
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