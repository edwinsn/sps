
<!DOCTYPE html>
<html>
<head>
    <link href="css/Normalize.css" rel="stylesheet">
    <link href="css/test.css" rel="stylesheet" />
    <meta charset="utf-8" />
    <script type="text/javascript" src="javaScript/coronavirus.js"></script>
    <title>Plataforma Telesalud/Psicologia/Test Adicciones</title>
</head>
<body>
    <jsp:include page="Header.html" />
    <br>

    <section class="info">
        <h3><a href="psicologia.jsp">Test:</a></h3>
        <h3><a href="psicologia.jsp">Adicciones</a></h3>
    </section>

    <h2 id="empezar" onclick="ocultar(this.id)">Empezar Test</h2>

    <section id="preguntas" class="preguntas">
        <div id="pregunta1">
            <h3>¿Con qué frecuencia consume algún tipo de sustancia?</h3>
            <p onclick="rn()">Mas de 3 veces por semana</p>
            <p onclick="rm()">1 ves a la semana</p>
            <p onclick="rp()">No consumo o lo hago rara vez</p>
        </div>
        <div id="pregunta2">
            <h3>¿En qué instancias consumes algún tipo de sustancia?</h3>
            <p onclick="rn()">Estando solo</p>
            <p onclick="rm()">En instancias sociales/recreacionales</p>
            <p onclick="rm()">Cuando tengo que enfrentarme a alguna situación estresante</p>
            <p onclick="rp()">No consumo</p>
        </div>
        <div id="pregunta3">
            <h3>Si consume algún tipo de sustancia, ¿Cuál es el uso que le da?</h3>
            <p onclick="rn()">Me relajo o evado problemas</p>
            <p onclick="rn()">Estabilizo el estado de animo</p>
            <p onclick="rm()">Tengo mas energia y subo el animo</p>
            <p onclick="rm()">Paso un grato agradable</p>
            <p onclick="rp()">No consumo ninguna sustancia</p>
        </div>
        <div id="pregunta4">
            <h3>Cuando ha consumido, ¿Ha tenido alguno de las siguientes consecuencias?</h3>
            <p onclick="rn()">No recordar lo que hiciste</p>
            <p onclick="rn()">Descontrol de inpulsos</p>
            <p onclick="rm()">Problemas legales</p>
            <p onclick="rp()">No he tenido ninguno de estos problemas</p>
        </div>
        <div id="pregunta5">
            <h3>¿Ha tenido consecuencias familiares a propósito del consumo?</h3>
            <p onclick="rn()">Si</p>
            <p onclick="rm()">Algunas veces</p>
            <p onclick="rp()">No</p>
        </div>
        <div id="pregunta6">
            <h3>¿Ha perdido un trabajo por consumir alguna sustancia?</h3>
            <p onclick="rn()">Si</p>
            <p onclick="rp()">No</p>
        </div>
        <div id="pregunta7">
            <h3>¿Has perdido amistades, familiares o relaciones de pareja por consumir sustancias?</h3>
            <p onclick="rn()">Si</p>
            <p onclick="rp()">No</p>
        </div>
        <div id="pregunta8">
            <h3>Si al ingresar a un nuevo trabajo le aplicaran un examen de drogas, ¿Qué haría?</h3>
            <p onclick="rn()">Rechazaria el trabajo</p>
            <p onclick="rm()">Esperaria un tiempo y dejaria de consumir</p>
            <p onclick="rp()">No me complica ya que no consumo</p>
        </div>
        <div id="pregunta9">
            <h3>¿Ha desarrollado algún problema físico por consumo de sustancias?</h3>
            <p onclick="rn()">Si</p>
            <p onclick="rn()">No lo sé</p>
            <p onclick="rm()">No lo sé pero siento mi cuerpo con menos energía</p>
            <p onclick="rp()">No, ninguno</p>
        </div>
        <div id="pregunta10">
            <h3>¿Estaría dispuesto a entrar a un tratamiento de rehabilitación?</h3>
            <p onclick="rn()">No me interesa dejar de consumir</p>
            <p onclick="rn()">Ya lo he hecho pero no me da resultado</p>
            <p onclick="rm()">Creo que tengo la fortaleza para dejarlo yo mismo</p>
            <p onclick="rp()">Si, estaria dispuesto</p>
            <p onclick="rp()">No lo necesito porque no lo consumo</p>
        </div>
        <div id="pregunta11">
            <h3>¿Qué intentos ha hecho por dejar de consumir?</h3>
            <p onclick="rn()">Ninguno</p>
            <p onclick="rm()">Abstinencia</p>
            <p onclick="rp()">Buscar ayudar profesional</p>
            <p onclick="rp()">Volcarme al deporte o cativiadades extraprogramicas</p>
            <p onclick="rp()">No consumo</p>
        </div>
        <div id="pregunta12">
            <h3>¿Qué cantidad de su sueldo gasta en comprar sustancias?</h3>
            <p onclick="rn()">La mitad de mi sueldo</p>
            <p onclick="rn()">2/3 de mi sueldo o mas</p>
            <p onclick="rm()">1/3 de mi sueldo</p>
            <p onclick="rp()">No gasto una cantidad significativa</p>
        </div>
        <div id="pregunta13">
            <h3>¿Cuál de las siguientes conductas has realizado al estar bajo los efectos de una sustancia?</h3>
            <p onclick="rn()">He puesto en riesgo mi vida propia o la de los demas</p>
            <p onclick="rm()">Ha gastado mucho dinero</p>
            <p onclick="rm()">Conductas sexuales de alto riesgo</p>
            <p onclick="rp()">Ninguna de las anteriores</p>
        </div>
        <div id="pregunta14">
            <h3>¿Le han dicho que tienes un consumo problemático que usted no haya notado?</h3>
            <p onclick="rn()">Si</p>
            <p onclick="rp()">No</p>
        </div>
        <div id="pregunta15">
            <h3>Dentro de su entorno, ¿Hay personas que se vean afectadas por su consumo?</h3>
            <p onclick="rn()">Si, siento que les he hecho daño</p>
            <p onclick="rm()">No creo que se den cuenta</p>
            <p onclick="rp()">No</p>
        </div>
        <div id="pregunta16">
            <h3>Cuando ha tenido períodos de abstinencia, ¿Cómo los ha enfrentado?</h3>
            <p onclick="rn()">Con ansiedad y mucos deseos de consumir</p>
            <p onclick="rm()">Estoy pendiente del tiempo que llevo sin consumir</p>
            <p onclick="rm()">Tranquilo, pero he vuelto a consumir con facilidad</p>
            <p onclick="rp()">No he ha complicado mayormente</p>
            <p onclick="rp()">No consumo</p>
        </div>
        <div id="pregunta17">
            <h3>¿Cuáles son las situaciones en donde mas quiere consumir?</h3>
            <p onclick="rn()">Cuando estoy relajado</p>
            <p onclick="rm()">Cuando me preocupo o angustio</p>
            <p onclick="rm()">Cunado esnfrento una situacion estresante</p>
            <p onclick="rp()">No consumo</p>
        </div>
        <div id="pregunta18">
            <h3>¿Siente que consume más de lo que tenía planeado?</h3>
            <p onclick="rn()">Si, frecuentemente</p>
            <p onclick="rm()">A veces</p>
            <p onclick="rp()">Nunca</p>
        </div>
        <div id="pregunta19">
            <h3>¿Se ha informado respecto de los efectos que tiene en su salud el uso de sustancias?</h3>
            <p onclick="rn()">Nada</p>
            <p onclick="rp()">Algo</p>
            <p onclick="rm()">Si</p>
        </div>
        <div id="pregunta20">
            <h3>Dada la frecuencia con que consume, ¿Cómo ve su futuro?</h3>
            <p onclick="califica('n')">Puede que aumente mi consumo</p>
            <p onclick="califica('m')">Igual que siempre con la  misama frecuencia</p>
            <p onclick="califica('p')">No creo que siga en esto</p>
        </div>
    </section>

    <section class="recomendacion">
        <div id="rNegativa">
            <h3>Resultado: Su consumo de sustancias parece ser problematico.</h3>
            <br>
            <p>
                El consumo de sustancias y la frecuencia con que lo hace posee una estabilidad tal que forman parte y/o se relacionan con el estilo de vida en el que sé desenvuelve actualmente. Desde este punto de vista, también se reconoce que el consumo de sustancias en distintos ha traído consigo ciertos costos a nivel social, laboral, emocional, etc., lo cual demuestra que el uso y abuso de sustancias se ha apoderado ocasionalmente.En este punto, se recomienda un trabajo y apoyo activo de los profesionales de la salud, que sean capaces de atender a las necesidades emergentes del proceso terapéutico y orientar desde la psicología y psiquiatria.
            </p>
        </div>

        <div id="rMedia">
            <h3>Resultado: Tu consumo de sustancias parece ser moderado.</h3>
            <br>
            <p>
                Se podría concluir que consumir posee un rol activo en la actualidad, sin embargo, no resulta ser determinante o condicionante en tener una necesidad de adquirir sustancias en el cuerpo. Si bien, no se podría hablar directamente de una adicción (lo que es bueno), tampoco podemos declarar que es una situación de 'bienestar', ya que el consumo de sustancias posee un papel central en la vida personal. La estabilidad y frecuencia con la que se ingiere la droga en este nivel, no permite una desintoxicación o limpieza del organismo en este punto, aumentando la necesidad de consumir desde un punto de vista biológico.
            </p>
        </div>

        <div id="rPositiva">
            <h3>Resultado: Consumo no problemtico</h3>
            <br>
            <p>
                El hecho de llegar a consumir algún tipo de droga resulta ser ocasional y de carácter más que nada social.Por otra parte, es sumamente importante considerar los efectos que el consumo de sustancias tiene a nivel físico y también psicológico. A su vez, el cuestionar las propias conductas de consumo intermitente y el sentir cierta incomodidad debido a que está consumiendo una droga resulta ser un muy buen indicador para dar pie a un trabajo de esfuerzo y no continuar haciéndolo, el cual debe ser acompañado de profesionales de la salud.
            </p>
        </div>
    </section>

</body>
</html>