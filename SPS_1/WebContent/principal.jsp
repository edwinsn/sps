<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link href="css/principal.css" rel="stylesheet" />
    <script type="text/javascript" src="javaScript/principal.js" charset="utf-8"></script>
    <meta charset="utf-8" />
    <title>Plataforma Telesalud</title>
</head>
<body>

   <jsp:include page="Header.html"/>
   
   <main>
        <div class="mentor">
          	<form action="medicina" method="post">
				<input type="text" name="email" value="${email}" class="edad">
				<input class="icono" title="Medicina" alt="Icono de Medicina" src="Iconos/medicina.png" type="image" />

			</form>

            	<p class="text"><a href="medicina">Medicina</a></p>
            
        </div>
        <div class="mentor">
        <br>
            <a href="psicologia.jsp">
                <img class="icono" title="Psicologia" src="Iconos/psicologia.png" alt="Icono de Psicología" />
            </a>
            
            	<p class="text"><a href="psicologia.jsp">Psicologia</a></p>
            
            
        </div>
        <div class="mentor">
          
          
			<form action="saludFisica" method="get">
				<input type="text" name="years" value="${years}" class="edad">
				<input class="icono" title="Salud Fisica" alt="Icono de Salud Fisica" src="Iconos/ejercicios.png" type="image" />

			</form>	      
	      
	            <p class="text"><a href="saludFisica">Salud Fisica</a></p>
            
        </div>
    </main>
    <footer>
        <a href="#m-sugerencias">
            <img class="icono1" src="Iconos/sugerencias.png" />
        </a>

          <!--Ventana Sugerencias-->

        <section id="m-sugerencias" class="sugerencia">
            <div class="modalbox1">
                <a href="#close" title="Close" class="close">X</a>
                <form id="formulario" action="suggestions" method="post">
                    <h3>Atencion al Usuario:</h3>
                    <p>!Nos encataria escuchar sus sugerencias, inquietudes o problemas con cualquier cosa que podamos mejorar!</p>
                    <h3>Tipo de Comentario:</h3>
                    <input id="t-poblema" type="radio" name="r-comentarios" />
                    <label for="t-problema">Informe de Errores</label>
                    <br />
                    <input id="t-sugerencia" type="radio" name="r-comentarios" />
                    <label for="t-sugerencia">Sugerencias</label>
                    <br />
                    <input id="t-pregunta" type="radio" name="r-comentarios" />
                    <label id="t-pregunta" for="t-pregunta">Preguntas</label>
                    <br />
                    <input id="t-otro" type="radio" name="r-comentarios" />
                    <label id="t-otro" for="t-otro">Otro</label>
                    <h3 class="describir-c">Describa sus comentarios:</h3>
                    <textarea class="describir-c" name="comentarios" rows="12" cols="50" required></textarea>
                    <input id="enviar-c" type="submit" value="Enviar Comentarios" />
                </form>
            </div>
         </section>   
         
         <!-- Ventana Mensaje --> 
    <%
    if(session.getAttribute("mensaje")=="true"){
    	out.println(
		    "<section id=\"mensaje\" class=\"mensajes-mask\">"+
		    "<div class=\"caja\">" +
			"<p onclick=\"cerrar()\">Gracias por tus comentarios!</p>"+
			"<h3  onclick=\"cerrar()\">Aceptar</h3>"+
			"</div></section>"
		);
		session.setAttribute("mensaje", "falso");
    }
    %>
</footer>
</body>
</html>