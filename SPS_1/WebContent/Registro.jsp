<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
	<link href="css/Normalize.css" rel="stylesheet">
    <link href="css/registro.css" rel="stylesheet" />
    <title>Plataforma Telesalud/Registrarse</title>
</head>
<body>
    <header>

        <a href="Login.jsp">
            <img class="icon" src="Iconos/logo.svg" />
        </a>
    </header>
    <form class="formulario" action="registration" method="post">
        <h3>Regístrate:</h3>
        <section class="contenedor">
            <input class="contenedor-user" type="text" name="nombre" placeholder="Nombre" pattern=[A-Za-z]* required />
            <input class="contenedor-user" type="text" name="apellido" placeholder="Apellido" required />
            <input class="contenedor-correo" type="email" name="correo" placeholder="Correo Electronico" required />
            <input class="contenedor-correo" type="password" name="contraseña" placeholder="Contraseña" title="min:8 max:15"
                   minlength="8" maxlength="15" required />
            <p>Fecha de Nacimiento:</p>
            <input class="contenedor-numero" type="number" name="f-nacimientod" placeholder="Dia" step="1" min="1" max="31" required />
            <input class="contenedor-numero" type="number" name="f-nacimientom" placeholder="Mes" step="1" min="1" max="12" required />
            <input class="contenedor-numero" type="number" name="f-nacimientoa" placeholder="Año" step="1" min="1920" max="2005" required />
            <br />
            <input class="condiciones" type="checkbox" name="t-condiciones" required />
            <h5 class="condiciones">Acepto recibir correos electrónicos</h5>
            <input id="registrarse" type="submit" value="Registrarse" />
        </section>
    </form>
</body>
</html>