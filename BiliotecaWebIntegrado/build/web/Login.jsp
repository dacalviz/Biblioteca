<%-- 
    Document   : Login
    Created on : Jun 3, 2019, 5:27:47 PM
    Author     : Elmer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

<head>
	<meta charset="UTF-8">
	<title>Formulario registro</title>
        <link rel="stylesheet" href="Css/cssFormularios.css" type="text/css"> 
    
</head>

  <body>
      <br><br><br><br><br><br><br><br><br>
        <h1>Bibioteca UTP</h1>
        <form action="ServletUsuario" method="post" class="form-register">
            
            <h2 class="form__titulo">INGRESAR</h2>
            
            <div class="contenedor-inputs">
                
                <input type="text" name="Usuario" placeholder="Usuario" class="input-100" required>
                <input type="password" name="passwordUsuario" placeholder="Password" class="input-100" required>
                
                <input type="submit" name="metodo" value="Ingresar" class="btn-enviar">
                <p class="form_link">¿Olvidaste tu contraseña?<a href="#"> Ingresa Aqui</a></p>
            
        </form>
            
             
  </body>

</html>