<!DOCTYPE html>
<html>
<head>
	<link href="css/Normalize.css" rel="stylesheet">
    <link href="css/test.css" rel="stylesheet" />
    <meta charset="utf-8" />
    <script type="text/javascript" src="javaScript/coronavirus.js"></script>
    <title>Plataforma Telesalud/Psicologia/Test Depresi�n</title>
</head>
<body>
	<jsp:include page="Header.html" />
    <br>

    <section class="info">
        <h3><a href="psicologia.jsp">Test:</a></h3>
        <h3><a href="psicologia.jsp">Depresi�n</a></h3>
    </section>

    <h2 id="empezar" onclick="ocultar(this.id)">Empezar Test</h2>

    <section id="preguntas" class="preguntas">
        <div id="pregunta1">
            <h3>�Muchas de las actividades que le sol�an gustar ya no le motivan o no te caen en gracia?</h3>
            <p onclick="rn()">Si y tampoco hay nuevas actividades que me motiven</p>
            <p onclick="rm()">Me motivan menos actividades que antes</p>
            <p onclick="rp()">No.Hay muchas activiades que me gustan o motivan</p>
        </div>
        <div id="pregunta2">
            <h3>Ha tenido problemas de apetito o come mas de lo habitual</h3>
            <p onclick="rn()">Si, varias veces</p>
            <p onclick="rm()">Si, unas cuantas veces</p>
            <p onclick="rp()">No, no he tenido problemas de apetito</p>
        </div>
        <div id="pregunta3">
            <h3>�Suele pensar en morirte y siente que descansas o te alivias con la idea?</h3>
            <p onclick="rn()">Si, me pasa a menudo</p>
            <p onclick="rm()">Algunas veces</p>
            <p onclick="rp()">No</p>
        </div>
        <div id="pregunta4">
            <h3>�Siente que ha perdido algo o alguien que era fundamental en tu vida y te cuesta hallar un sentido?</h3>
            <p onclick="rn()">No, no siento que haya perdido nada importante</p>
            <p onclick="rm()">Si, me embarga el sentimiento de perdida</p>
            <p onclick="rp()">Me entristece la p�rdida, pero creo que con el tiempo puedo hallar un nuevo sentido e vida</p>
        </div>
        <div id="pregunta5">
            <h3>�Alguna vez ha pensado en suicidarse?</h3>
            <p onclick="rn()">Si y lo he intentado o he pensado serimente en concretarlo</p>
            <p onclick="rm()">A veces, aunque s�lo son ideas que me alivian pero no concretar�a</p>
            <p onclick="rp()">No, suicidarme nunca seria una opcion para mi</p>
        </div>
        <div id="pregunta6">
            <h3>�Siente estar m�s irritable con la gente de lo que sol�a ser?</h3>
            <p onclick="rn()">Si, mucho m�s que antes</p>
            <p onclick="rm()">Un poco m�s, tengo menos aguante</p>
            <p onclick="rp()">No, tengo paciencia cuando algo me desagrada</p>
        </div>
        <div id="pregunta7">
            <h3>�Tiene dificultad para conciliar el sue�o o duerme en exceso?</h3>
            <p onclick="rn()">Si, mis periodos de sue�o/vigilia se encuentran alterados</p>
            <p onclick="rm()">A veces, depende de mi estado de animo</p>
            <p onclick="rp()">No, duermo bien y las horas que corresponden</p>
        </div>
        <div id="pregunta8">
            <h3>�Se ha sentido cansado o con falta de energ�a el �ltimo tiempo?</h3>
            <p onclick="rn()">Si, me pasa con frecuencia</p>
            <p onclick="rm()">A veces si y a veces no</p>
            <p onclick="rp()">Creo que mi nivel de energia es bastante saludable</p>
        </div>
        <div id="pregunta9">
            <h3>�Ha experimentado aumento o disminuci�n de peso de forma involuntaria el �ltimo tiempo?</h3>
            <p onclick="rn()">Si mi peso ha sufrido una variacion considerable debido a que he descubierto la alimentaci�n</p>
            <p onclick="rm()">Ya no me fijo tanto en lo que como, con lo que mi peso ha experimnetado una peque�a variaci�n</p>
            <p onclick="rp()">No, siempre cuido mi alimentacion y mantego un peso saludable</p>
        </div>
        <div id="pregunta10">
            <h3>�Se considera a usted mismo(a) una persona �til?</h3>
            <p onclick="rn()">A menudo se me ocurre que me siento in�til</p>
            <p onclick="rm()">En ocaciones, aunque me gustaria estar haciendo otra actividad</p>
            <p onclick="rp()">Si, siento que aporto a otras personas</p>
        </div>
        <div id="pregunta11">
            <h3>�El �ltimo tiempo ha tenido sentimientos de odio contra si mismo?</h3>
            <p onclick="rn()">A menudo, no acepto mi forma de ser</p>
            <p onclick="rm()">Mas bien desagrado, me gustaria ser diferente en varios aspectos</p>
            <p onclick="rp()">No, me quiero tal como soy</p>
        </div>
        <div id="pregunta12">
            <h3>�Ha experimentado recientemente un inc�modo sentimiento de culpa por algo que haya hecho a alguien importante?</h3>
            <p onclick="rn()">Si, la culpa me invade a menudo</p>
            <p onclick="rm()">A veces, aunque me enfoco mas en reparar mi error</p>
            <p onclick="rp()">No, nunca me ha pasado</p>
        </div>
        <div id="pregunta13">
            <h3>�Se est� siendo particularmente dif�cil concentrarte en tu trabajo o estudio?</h3>
            <p onclick="rn()">Si, mis emociones no me permiten conectar con las actividades cotidianas</p>
            <p onclick="rm()">Un poco, me siento desconcentrado aunque con esfuerzo soy capaz de cumplir mis tareas</p>
            <p onclick="rp()">No tengo preoblemas de concentraci�n</p>
        </div>
        <div id="pregunta14">
            <h3>�Consideras que tu estado de �nimo var�a mucho durante el d�a?</h3>
            <p onclick="rn()">Asi es, a veces me siento euforico y luego me quiero morir</p>
            <p onclick="rm()">Me siento de forma similar en el dia, pero de repente experimento bajones de animo importantes</p>
            <p onclick="rp()">No, mi estado de animo es estable</p>
        </div>
        <div id="pregunta15">
            <h3>Cuando hay juntas entre amigos o familiares, �Le gusta participar?</h3>
            <p onclick="rn()">No tengo vida social el ultimo momento, me retraigo porque no me interesa compartir</p>
            <p onclick="rm()">Ultimadamente no lo disfruto, me tensiona un poco relacionarme con otras personas</p>
            <p onclick="rp()">Me gusta mucho, lo paso bien socializando</p>
        </div>
        <div id="pregunta16">
            <h3>�Cu�l es tu visi�n del futuro?</h3>
            <p onclick="rn()">No soy optimista al respeto.Creo que todo ira de mal en peor</p>
            <p onclick="rm()">Creo que puedo tener sentido, aunque me cuesta buscarle uno</p>
            <p onclick="rp()">Lo veo con esperanza, creo que ser� cada vez m�s feliz</p>
        </div>
        <div id="pregunta17">
            <h3>
                �Cu�l es su nivel de actividad en un d�a com�n?
            </h3>
            <p onclick="rn()">Muy poca actividad, casi no salgo de mi casa</p>
            <p onclick="rm()">Lo necesario para sobrevivir aunque prefiriria no hacer nada</p>
            <p onclick="rp()">Hago mis actividades con gusto y tambien me doy tiempo para disfrutar</p>
        </div>
        <div id="pregunta18">
            <h3>�Le acompa�a un sentimiento de tristeza la mayor parte del d�a?</h3>
            <p onclick="rn()">Si, es intenso y premanente, dudo que lo pueda superar</p>
            <p onclick="rm()">Si, tiene que ver con lo que estoy pasando aunque confio en que pasara</p>
            <p onclick="rp()">No, mi estado de �nimo es bueno</p>
        </div>
        <div id="pregunta19">
            <h3>�Se siente indiferente frente a situaciones que antes le emocionaban?</h3>
            <p onclick="rn()">Si, ya nada me impresiona ni me emociona demasiado</p>
            <p onclick="rm()">Depende, aunque ahora me emocionan menos cosas que antes</p>
            <p onclick="rp()">No, me siento involucrado con lo que me ocurre o le ocurre a los demas</p>
        </div>
        <div id="pregunta20">
            <h3>�Te sientes vac�o(a), solo(a) o que tu vida carece de sentido?</h3>
            <p onclick="califica('n')">Si, considerablemente</p>
            <p onclick="califica('m')">Un poco, aunque confio que es temporal</p>
            <p onclick="califica('p')">No, me gusta mi vida</p>
        </div>
    </section>

    <section class="recomendacion">
        <div id="rNegativa">
            <h3>Resultado: Detectamos una gran tendencia a estados depresivos</h3>
            <br>
            <p>
                Esta es el grupo de las personas que presenta mayor sintomatolog�a depresiva, lo cual no necesariamente implica un diagnostico.Te recomendamos que visites a un profesional de la salud urgentemente apesar de que no tenga ganas, ya que el pronostico empieza a empeorar.
            </p>
        </div>
        <div id="rMedia">
            <h3>Resultado: Detectamos una tendencia moderada a estados depresivos</h3>
            <br>
            <p>Pareciera que si bien no se encuentras en un estado depresivo propiamente tal, hay ciertas situaciones en su vida que le est�n afectando considerablemente, lo cual le recomendamos poder tratarlas a tiempo, no necesariamente tiene que ser un diagnostico. Nuestra recomendaci�n es que aprovechando que no est� entre los que presentan la sintomatolog�a depresiva de pron�stico m�s complejo, aproveche sus fortalezas personales y se plantee un cambio profundo en su vida � Todavia est� a tiempo!</p>

        </div>
        <div id="rPositiva">
            <h3>Resultado: No detectamos sintomatolog�a depresiva</h3>
            <br>
            <p>Al parecer su estado de �nimo es estable y no tiene sintomatolog�a depresiva suficiente, aunque siempre es recomendable verificarlo con un profesional calificado.Le recomendamos seguir cuidando su salud mental y emocional y buscar ayuda profesional siempre que enfrente un conflicto personal que le sea dif�cil superar por usted mismo.</p>
        </div>
    </section>
</body>
</html>