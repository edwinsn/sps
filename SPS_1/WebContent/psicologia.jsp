<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
    <meta charset="utf-8" />
    
    <link href="css/Normalize.css" rel="stylesheet">
    <link href="css/Psicología.css" rel="stylesheet" />
    <title>Plataforma Telesalud/Psicología</title>
</head>
<body>

    <jsp:include page="Header.html" />
    <br>
    <br>
    <br>
    <section class="psicologia">
        <!--Parte Texto-->
        <section>
            <h3>Realiza un test</h3>
            <p>
                Desde aquí puede elegir el test psicológico que desee para conocer algún aspecto de su personalidad.
                <br />
                <br />
                En lo siguiente encontrara tres test, las cuales no tienen un fin diagnóstico,
                pero le ayudarán a arrojar luces sobre la existencia de un eventual problema psicológico, de modo de orientarse a buscar ayuda cuando sea necesario.
            </p>
        </section>

        <!--Parte Escoger-->

        <section class="escoger">

            <!--Escoger Test Coronavirus-->

            <a href="coronavirus.jsp">
                <section class="coronavirus test">
                    <img class="icono_p" src="Iconos/pCoronavirus.jpg" />
                    <h5 class="escoger-test">Impacto Emocional Coronavirus</h5>
                    <p>
                        ¿Cree que la pandemia del coronavirus puede estar poniendo su mundo de cabeza.
                        <br />
                        <br />
                        Y que psicológicamente le está afectando más de la cuenta?Recuerde que podemos recuperar la estabilidad social y economica.
                    </p>
                </section>
            </a>

            <!--Escoger Test Adiccion-->
            <a href="adicciones.jsp">
                <section class="adiccion test">
                    <img class="icono_p" src="Iconos/pAdicciones.jpg" />
                    <h5>Adicciones</h5>
                    <p>
                        ¿Cree estar teniendo un consumo problemático de sustancias (alcohol o drogas)?
                        <br />
                        <br />
                        ¿Cómo saber cuándo se cruza la línea entre un consumo no problemático y otro que requiere atención profesional.
                    </p>
                </section>
            </a>

            <!--Escoger Test Depresion-->

            <a href="depresión.jsp">
                <section class="depresion test">
                    <img class="icono_p" src="Iconos/pDepresion.jpg" />
                    <h5>Depresión</h5>
                    <p>
                        ¿Cree sufrir depresión? ¿Sus situaciones cotidianas ya no le motivan.
                        <br />
                        <br />
                        Siente cansancio y su estado de ánimo está por el suelo?Recuerde que siempre hay posibilidades de tratarlo.
                    </p>
                </section>
            </a>
        </section>
    </section>
</body>
</html>