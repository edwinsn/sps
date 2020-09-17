<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
   
    <link href="css/Login.css" rel="stylesheet" />
    <title>Plataforma Telesalud/Login</title>
</head>
<body>
    <form class="formulario" action="Login" method="post">
        <figure>
            <img src="Iconos/login.png" class="icono1" />
        </figure>
        <p id="login">Login</p>
        <section class="contenedor">
            <section class="contenedor-input">
                <input name="UserName" type="text" placeholder="Correo Electronico" required />
                <img src="Iconos/loginEmail.png" class="icono2" />
            </section>
            <section class="contenedor-input">
                <input name="password" type="password" placeholder="Contrasena" required />
                <img src="Iconos/loginPassword.png" class="icono2" />
            </section>

            <p id="usuarioin">
                ${invalidUser}
            </p>

            <input id="validarusuario" type="submit" value="Ingresar" />
            <p class="boton-registrar"><a href="Registro.jsp">Registrate</a></p>
        </section>
    </form>
</body>
</html>