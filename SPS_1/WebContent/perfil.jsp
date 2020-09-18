<!DOCTYPE html>
<html>
<head>
    <link href="css/Normalize.css" rel="stylesheet">
    <link href="css/perfil.css" rel="stylesheet" />
    <meta charset="utf-8" />
    <title>Plataforma Telesalud/Perfil</title>
</head>
<body>
	<jsp:include page="Header.html" />
	<br>
	<br>
	<br>
	
    <form class="formulario">
        <h3>Perfil:</h3>
        <section class="contenedor">
            <div>
                <p>Nombre:</p>
                <input id="nombre" type="text" name="nombre" value="<%=session.getAttribute("name")%>" />
            </div>
            <div>
                <p>Apellido:</p>
                <input id="apellido" type="text" name="apellido" value="<%=session.getAttribute("lastname")%>" />

            </div>
            <div>
                <p>CorreoE</p>
                <input id="correo-e" type="email" name="correo-e" value="<%=session.getAttribute("email")%>" />
            </div>
            <div>
                <p>Contraseña</p>
                <input id="contraseña" type="text" name="contraseña" value="<%=session.getAttribute("password")%>" />
            </div>
            <div>
                <p>Edad</p>
                <p class="numero">24</p>
            </div>

            <input class="enviar" type="submit" value="Guardar Cambios" />
        </section>
    </form>
</body>
</html>