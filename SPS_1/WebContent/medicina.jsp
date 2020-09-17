<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link href="css/Normalize.css" rel="stylesheet">
    <link href="css/medicin.css" rel="stylesheet" />
    <meta charset="utf-8" />
    <title>Plataforma Telesalud/Medicina</title>
</head>
<body onload="myfunction();">

    <jsp:include page="Header.html" />

    <section class="contenedor">
        <!--Opciones de Cita-->
        
        <main>
            <div class="escoger_opcion programar" id="programar_cita">
                <img class="icono ho" title="Programa tus Citas" onclick="programar()" src="Iconos/mProgramarCitas.png" />
                <h3 onclick="programar()">Programa tus Citas</h3>
            </div>
            <div class="escoger_opcion editar" id="editar_cita">
                <img class="icono ho" title="Edita tus Citas" onclick="reprogramar()" src="Iconos/mEditarCitas.png" />
                <h3 onclick="reprogramar()">Edita tus Citas</h3>
            </div>
        </main>


        <!--Parte Segundaria-->

        <section class="programar_editar_cita">
            <section class="programar_cita" id="escoger-info">
                <div class="escoger_dia">
                    <p id="Lun" onclick="cambiarDia(this.id)">
                        Lun
                        <script type="text/javascript">
                            document.write(parseInt(fecha.getDate()) - parseInt(day));
                        </script>
                    </p>

                    <p id="Mar" onclick="cambiarDia(this.id)">
                        Mar
                        <script type="text/javascript">
                            document.write(parseInt(fecha.getDate()) - parseInt(day) + 1);
                        </script>
                    </p>

                    <p id="Mie" onclick="cambiarDia(this.id)">
                        Mier
                        <script type="text/javascript">
                            document.write(parseInt(fecha.getDate()) - parseInt(day) + 2);
                        </script>
                    </p>

                    <p id="Jue" onclick="cambiarDia(this.id)">
                        Jue
                        <script type="text/javascript">
                            document.write(parseInt(fecha.getDate()) - parseInt(day) + 3);
                        </script>
                    </p>

                    <p id="Vie" onclick="cambiarDia(this.id)">
                        Vie
                        <script type="text/javascript">
                            document.write(parseInt(fecha.getDate()) - parseInt(day) + 4);
                        </script>
                    </p>

                    <p id="Sab" onclick="cambiarDia(this.id)">
                        Sab
                        <script type="text/javascript">
                            document.write(parseInt(fecha.getDate()) - parseInt(day) + 5);
                        </script>
                    </p>

                    <p class="siguiente" onClick="atrasarSemana()"> < </p>
                    <p class="siguiente" onClick="adelantarSemana()"> > </p>
                </div>

                <div id="horas" class="escoger_hora">

                    <p id="0" onclick="cambiarHora(this.id)">7:00am - 9:00am</p>
                    <p id="1" onclick="cambiarHora(this.id)">9:00am - 11:00am</p>
                    <p id="2" onclick="cambiarHora(this.id)">11:00am - 1:00pm</p>
                    <p id="3" onclick="cambiarHora(this.id)">2:00pm - 4:00pm</p>
                </div>

                <div class="info_cita" id="cuadroCita">
                    <div id="000">
                        <p>Doctor:</p>
                        <p id="doctor">${c000}</p>
                        <p>Fecha:</p>
                        <p id="fecha">
                            <script>
                            	mostrarCita();
                                document.write(fecha.getDate() + " " + (fecha.getMonth() + 1));
                            </script>
                        </p>

                        <form id="formularioCitas" action="programarCita" method="post">

                            <input id="user" type="text" name="user" value=<%=session. getAttribute("email")%> class="oculto">
                            <input type="text" id="inputHora" name="hora" class="oculto">
                            <input type="text" id="inputDoctor" name="doctor" class="oculto">
                            <input type="submit" value="Programar cita" onclick="guardarCita();">

                        </form>

                    </div>
                </div>
                <div class="ci">
                    <%

                    //i=semanas,j=dias,k=horas

                    for(int i=0; i<4; i++){
                        for(int j=0;j<6;j++){
                		    for(int k=0;k<4;k++){
                        	   out.println( "<p id=\""+i+""+j+""+k+"\">"+request.getSession().getAttribute("c"+i+""+j+""+k)+"></p>");
                        	}
                		}
                	}
                       %>
                </div>

            </section>

            <div class="editar_cita" id="citasActuales">
                <h3 id="verificar_color">Cita Programada:</h3>
                <br>
                <h5 >Doctor:</h5>
                <p>${doctor}</p>
                <h5>Fecha:</h5>
                <p>${hora}</p>
                <form action="eliminarCita" method="post">
                    <input class="oculto" type="text" name="user" value=<%=session.getAttribute("email")%>>
                    <input type="submit" value="Eliminar Cita">
                </form>
            </div>

            <section>
                <p id="opcion" class="oculto">${citasActivas}</p>
                <script>
                    if (document.getElementById("opcion").textContent === "Activas") {

                        document.getElementById("escoger-info").style.display = "none";
                        document.getElementById("citasActuales").style.display = "block";

                    }
                    else {
                        document.getElementById("citasActuales").innerHTML = "<p>No tienes citas Registradas</p>";
                    }
                </script>
            </section>

        </section>
    </section>
    <script type="text/javascript" src="javaScript/Medicina1.js"></script>        	
</body>
</html>