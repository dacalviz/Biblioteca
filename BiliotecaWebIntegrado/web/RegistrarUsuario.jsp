<%-- 
    Document   : RegistrarUsuario
    Created on : Jun 3, 2019, 5:28:05 PM
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
        
        <h1>Bibioteca UTP</h1>
        <form action="ServletUsuario" method="post" class="form-register">
            
            <h2 class="form__titulo">CREAR CUENTA</h2>
            
            <div class="contenedor-inputs">
                
                <input type="text" name="nombreUsuario" placeholder="Nombre" class="input-48" required>
                
                <input type="text" name="apellidoUsuario" placeholder="Apellido" class="input-48" required>
                
                <input type="text" name="telefonousuario" placeholder="Telefono" class="input-48" required>
                
                <input type="text" name="dniUsuario" placeholder="Dni" class="input-48" required>
                
                <input type="text" name="direccionUsuario" placeholder="Direccion" class="input-100" required>
                
                <select name="nacionalidadUsuario" class="input-100" style = "color: #7E8080;" >
                    <option disabled selected >Nacionalidad</option>
                    <option>Peru</option>
                    <option>Argentina</option>
                    <option>Colombia</option>
                    <option>Arequipa</option>
                </select>
                
                <input type="text" name="loginUsuario" placeholder="Usuario" class="input-48" required>
                
                <input type="password" name="claveUsuario" placeholder="Contraseña" class="input-48" required>
                                                               
                <select name="tipoUsuario" style = "color: #7E8080;" >
                    <option disabled selected >Tipo Usuario</option>
                    <option>Estudiante</option>
                    <option>Docente</option>
                    <option>Personal</option>
                    <option>ExtraUTP</option>
                </select>
                
                <input type="date" name="fechaNacimiento" placeholder="Fecha de Nacimiento" class="input-48" required>
                
                <input type="submit" name="metodo" value="Registrar" class="btn-enviar">
                <p class="form_link">¿Ya tienes una cuenta? <a href="Login.jsp">Ingresa Aqui</a></p>
            
        </form>    
  </body>

</html>