<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <link href="css/Normalize.css" rel="stylesheet">
    <link href="css/test.css" rel="stylesheet" />
    <meta charset="utf-8" />
    <script type="text/javascript" src="javaScript/coronavirus.js"></script>
    <title>Plataforma Telesalud/Psicologia/Test Coronavirus</title>
</head>
<body>

    <jsp:include page="Header.html" />
    <br>

    <section class="info">
        <h3><a href="psicologia.jsp">Test:</a></h3>
        <h3><a href="psicologia.jsp">Impacto Emocional Coronavirus</a></h3>
    </section>

    <h2 id="empezar" onclick="ocultar(this.id)">Empezar Test</h2>

    <section id="preguntas" class="preguntas">
        <div id="pregunta1">
            <h3>�Cu�nto tiempo pasa inform�ndose sobre noticias relacionadas al coronavirus?</h3>
            <p onclick="rn()">Todo el d�a</p>
            <p onclick="rm()">Prefiero no informarme</p>
            <p onclick="rp()">Lo suficiente para contar con la informaci�n necesaria</p>
        </div>

        <div id="pregunta2">
            <h3>�Ha sufrido episodios de ansiedad como crisis de p�nico o angustia durante esta pandemia?</h3>
            <p onclick="rn()">Si, varias veces</p>
            <p onclick="rm()">Si, unas cuantas veces</p>
            <p onclick="rp()">Nunca</p>
        </div>

        <div id="pregunta3">
            <h3>�En estos d�as has ido a comprar una gran cantidad de mercader�a, abasteci�ndote de forma poco habitual?</h3>
            <p onclick="rn()">S�</p>
            <p onclick="rm()">S�, aunque solo un poco m�s</p>
            <p onclick="rp()">No, compro lo mismo de siempre</p>
        </div>
        <div id="pregunta4">
            <h3>�Siente gran ansiedad o agitaci�n a la hora de tomar  un ascensor o estar cerca de otra gente?</h3>
            <p onclick="rn()">S�</p>
            <p onclick="rm()">S�, aunque moderada</p>
            <p onclick="rp()">No</p>
        </div>
        <div id="pregunta5">
            <h3>�Eval�a constantemente qui�n puede estar disponible para ayudarle si le pasa algo?</h3>
            <p onclick="rn()">Si</p>
            <p onclick="rm()">Algunas veces</p>
            <p onclick="rp()">No</p>
        </div>
        <div id="pregunta6">
            <h3>�Siente a menudo que podr�a estar contagiado, a�n si no tiene s�ntomas?</h3>
            <p onclick="rn()">Con Frecuencia</p>
            <p onclick="rm()">Ocasionalmente</p>
            <p onclick="rp()">Nunca o casi nunca</p>
        </div>
        <div id="pregunta7">
            <h3>En los �ltimos d�as, �Ha sentido mareo, dolor tor�cico u otros s�ntomas sin que padezca alguna enfermedad diagnosticada?</h3>
            <p onclick="rn()">Si</p>
            <p onclick="rm()">Algunas veces</p>
            <p onclick="rp()">No</p>
        </div>
        <div id="pregunta8">
            <h3>�Est� pendiente siente su cuerpo durante una buena parte del d�a?</h3>
            <p onclick="rn()">S�</p>
            <p onclick="rp()">No</p>
            <p onclick="rm()">M�s de lo habitual</p>
        </div>
        <div id="pregunta9">
            <h3>�Est�s teniendo dificultades para conciliar el sue�o durante la noche?</h3>
            <p onclick="rn()">Si me cuesta dormir</p>
            <p onclick="rm()">Duermo, pero despierto de forma intermitente</p>
            <p onclick="rp()">Descanso igual que siempre</p>
        </div>
        <div id="pregunta10">
            <h3>�Siente que su estado de �nimo est� cambiando negativamente a ra�z de todo lo que esta ocurriendo con esta pandemia?</h3>
            <p onclick="rn()">S�, progresivamente es cada vez peor</p>
            <p onclick="rm()">Me afecta, pero mantengo una fortaleza interna</p>
            <p onclick="rp()">No me ha afectado hasta ahora</p>
        </div>
        <div id="pregunta11">
            <h3>�Cu�l es la emoci�n que m�s predomina en usted por estos d�as?</h3>
            <p onclick="rn()">Mucha ansiedad y miedo</p>
            <p onclick="rn()">Angustia por el futuro</p>
            <p onclick="rn()">Desesperaci�n</p>
            <p onclick="rm()">Soledad</p>
            <p onclick="rp()">Ninguna de las anteriores</p>
        </div>
        <div id="pregunta12">
            <h3>�C�mo siente la posibilidad de que ocurra una muerte entre tu c�rculo cercano?</h3>
            <p onclick="rn()">Me angustia de sobremanera</p>
            <p onclick="rm()">Prefiero creer que no le tocar� a un ser querido</p>
            <p onclick="rp()">No es una preocupaci�n, s� que no ocurrir�</p>
        </div>
        <div id="pregunta13">
            <h3>Cuantas veces te lava las manos o aplicas jabon al d�a</h3>
            <p onclick="rn()">Mas de 8</p>
            <p onclick="rp()">Entre 3 a 8</p>
            <p onclick="rm()">Menos de 3</p>
            <p onclick="rp()">No ando pendiente de eso</p>
        </div>
        <div id="pregunta14">
            <h3>�Qu� es lo qu� m�s te preocupa de esta pandemia?</h3>
            <p onclick="rn()">Que le pase algo malo a alguien querido</p>
            <p onclick="rn()">Tener que estar mucho en aislamiento</p>
            <p onclick="rm()">Las consecuencias econ�micas y/o sociales que trae la pandemia</p>
            <p onclick="rm()">Todas las anteriores</p>
            <p onclick="rp()">Ninguna de las anteriores</p>
        </div>
        <div id="pregunta15">
            <h3> Si se genera una crisis econ�mica importante, �C�mo ve la posibilidad de salir adelante?</h3>
            <p onclick="rn()">Seria extramademente dificil y duro</p>
            <p onclick="rp()">Pienso que a pesar de todo me podria reinventar</p>
            <p onclick="rm()">No creo que me afecte en lo personal</p>
        </div>
        <div id="pregunta16">
            <h3>�Ha consumido f�rmacos ansiol�ticos o antidepresivos a prop�sito de esta pandemia?</h3>
            <p onclick="rn()">Si, tuve que comenzar a hacerlo para mantenerme estable</p>
            <p onclick="rm()">Si, aunque ya lo hacia antes</p>
            <p onclick="rp()">No, no he necesitado</p>
        </div>
        <div id="pregunta17">
            <h3>�Qu� suele hacer en per�odos de aislamiento sanitario?</h3>
            <p onclick="rn()">Me desespero estando encerrado</p>
            <p onclick="rm()">Despues de un tiempo me aburro con todo lo que hago</p>
            <p onclick="rp()">Aprovecho el tempo libre para hacer cosas nuevas</p>
        </div>
        <div id="pregunta18">
            <h3>Si la cuarentena sanitaria se prolongara hasta finalizado el a�o, �C�mo se lo tomar�a?</h3>
            <p onclick="rn()">Creo que no lo soportaria</p>
            <p onclick="rm()">La acataria pero saliendo si me siento muy encerrado</p>
            <p onclick="rp()">Asumiria y buscar�a algo en que entretenerme</p>
        </div>
        <div id="pregunta19">
            <h3>Si de pronto encuentra un lugar con muchas provisiones de alcohol gel, mascarillas y productos escasos, �Qu� har�a?</h3>
            <p onclick="rn()">Compraria todo lo que pueda</p>
            <p onclick="rm()">Compraria lo necesario y dejar�a para el resto</p>
            <p onclick="rp()">No compreria, prefiero utilizar jabon en mi casa</p>
        </div>
        <div id="pregunta20">
            <h3>�Ha tenido conflictos con la gente cercana a prop�sito de esta situaci�n?</h3>
            <p onclick="califica('n')">Si, he tenido bastantes discuciones</p>
            <p onclick="califica('m')">Si, algo mas de lo habitual</p>
            <p onclick="califica('p')">No, mi mundo relacional nro se ha visto alterado</p>
        </div>
    </section>

    <section class="recomendacion">
        <div id="rPositiva">
            <h3>Resultado: Buen manejo de ansiedad</h3>
            <br>
            <p>
                Pareciera que en su caso tiene mucha fortaleza emocional para lidiar con el temor, le sugerimos que pueda ser un soporte para quienes viven d�as de confusi�n y angustia, pues en estos momentos muchos lo requieren(aunque sea a distancia).
            </p>
        </div>

        <div id="rMedia">
            <h3>Resultado: Te has conducido con ciertas dificultades</h3>
            <br>
            <p>
                Pareciera que apesar de sentirse afectad@ por los efectos de la pandemia, logra mantener cierta estabilidad gracias a tener el miedo bajo control.En ocasiones tiene que hacer un esfuerzo para mantener la esperanza en que todo ir� mejorando, pero cuando es capaz de poner las cosas en perspectiva, logra tener exito. Le recomendamos poder tratar con un profesional aquellas situaciones de ansiedad, para evitar que estas preocupaciones se transformen en algo m�s complejo y de este modo los cambios que se vienen no le tomen por sorpresa.
            </p>
        </div>

        <div id="rNegativa">
            <h3>Resultado: Le ha sido verdaderamente Complicado</h3>
            <br>
            <p>
                Pareciera que la crisis sanitaria le esta afectando emocionalmente de manera considerable.Para salir del estado de �nimo de angustia permanente, es necesario que su atenci�n no est� centrada solamente en lo negativo que est� ocurriendo en el mundo y que tambi�n aproveche este tiempo de pausa para trabajar en usted. Le recomendamos que se plantee metas para su crecimiento personal.
            </p>
        </div>
    </section>
</body>
</html>