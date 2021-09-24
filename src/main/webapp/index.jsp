<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inicio de Sesión</title>
<link rel="stylesheet" href="css/estilos_1.css">
<link rel="stylesheet" href="css/estilos_2.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

<!-- CAPA CONTENEDORA PRINCIPAL -->
<div id="main-content">
		<!-- CAPA CONTENEDORA CABEZOTE WEB -->
		<header id="header">
			<p>Tienta manugomezo</p>
		</header>
		
		<!-- CAPA CONTENEDORA MENU DE NAVEGACION WEB -->
		
			
		<!-- CAPA CONTENEDORA MENU IZQUIERDO WEB -->
		<sidebar id="sidebar">

		</sidebar>
		<!-- CAPA CONTENEDORA CONTENIDO CENTRAL - WEB -->
<content id="content">
<div class="container">
		<div class="form-container">
			<h2>Inicio de sesión</h2>
			<form id="formLogin" action="usuario" method="post">
				<input type="hidden" name="tipo" value="iniciarSesion" />
				<div class="form-group">
					<label for="nombre">Usuario</label>
					<input type="text" class="form-control" name="nombre" placeholder="Nombre de usuario" />
				</div>
				
				<div class="form-group">
					<label for="clave">Clave</label>
					<input type="password" class="form-control" name="clave" placeholder="Contraseña" />
				</div>
				
				<button type="submit" class="btn btn-success btn-block btn-lg">Iniciar sesión</button>
				<c:set var="mensaje" value="${requestScope.mensaje}" />
				<c:if test="${not empty mensaje}">
          <div class="alert alert-danger alert-dismissible">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            ${mensaje}
          </div>
				</c:if>
			</form>
		</div>
	</div>

</content>
        
        <footer id="footer">

        </footer>
	</div>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="js/bootstrapValidator.js"></script>
  <script src="js/script.js"></script>
</body>
</html>