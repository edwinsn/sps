<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
    <meta charset="utf-8" />
    
    <link href="css/Normalize.css" rel="stylesheet">
    <link href="css/Psicolog�a.css" rel="stylesheet" />
    <title>Plataforma Telesalud/Psicolog�a</title>
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
                Desde aqu� puede elegir el test psicol�gico que desee para conocer alg�n aspecto de su personalidad.
                <br />
                <br />
                En lo siguiente encontrara tres test, las cuales no tienen un fin diagn�stico,
                pero le ayudar�n a arrojar luces sobre la existencia de un eventual problema psicol�gico, de modo de orientarse a buscar ayuda cuando sea necesario.
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
                        �Cree que la pandemia del coronavirus puede estar poniendo su mundo de cabeza.
                        <br />
                        <br />
                        Y que psicol�gicamente le est� afectando m�s de la cuenta?Recuerde que podemos recuperar la estabilidad social y economica.
                    </p>
                </section>
            </a>

            <!--Escoger Test Adiccion-->
            <a href="adicciones.jsp">
                <section class="adiccion test">
                    <img class="icono_p" src="Iconos/pAdicciones.jpg" />
                    <h5>Adicciones</h5>
                    <p>
                        �Cree estar teniendo un consumo problem�tico de sustancias (alcohol o drogas)?
                        <br />
                        <br />
                        �C�mo saber cu�ndo se cruza la l�nea entre un consumo no problem�tico y otro que requiere atenci�n profesional.
                    </p>
                </section>
            </a>

            <!--Escoger Test Depresion-->

            <a href="depresi�n.jsp">
                <section class="depresion test">
                    <img class="icono_p" src="Iconos/pDepresion.jpg" />
                    <h5>Depresi�n</h5>
                    <p>
                        �Cree sufrir depresi�n? �Sus situaciones cotidianas ya no le motivan.
                        <br />
                        <br />
                        Siente cansancio y su estado de �nimo est� por el suelo?Recuerde que siempre hay posibilidades de tratarlo.
                    </p>
                </section>
            </a>
        </section>
    </section>
</body>
</html>