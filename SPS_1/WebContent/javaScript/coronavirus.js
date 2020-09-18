let respuestaPositiva = 0;
let repusestaNegativa = 0;
let respuestaMedia = 0;
let numeroPregunta = 1;


const ocultar = function (id) {

	document.getElementById(id).style.display = "none";
	document.getElementById("pregunta1").style.display = "block";

	document.getElementById("rPositiva").style.display = "none";
	document.getElementById("rMedia").style.display = "none";
	document.getElementById("rNegativa").style.display = "none";

}


const siguiente = function () {
	document.getElementById("pregunta" + numeroPregunta).style.display = "none";
	numeroPregunta++;
	document.getElementById("pregunta" + numeroPregunta).style.display = "block";

}


const rp = function () {
	respuestaPositiva++;
	siguiente();

}


const rn = function () {
	repusestaNegativa++;
	siguiente();
}


const rm = function () {
	respuestaMedia++;
	siguiente();
}



const califica = function (r) {

	document.getElementById("preguntas").style.display = "none";

	switch (r) {
		case 'n':
			repusestaNegativa++;
			break;

		case 'p':
			respuestaPositiva++;
			break;

		case 'm':
			respuestaMedia++;
			break;
	}


	if (respuestaMedia > repusestaNegativa && respuestaMedia > respuestaPositiva) {
		document.getElementById("rMedia").style.display = "block";
	}
	else {

		if (respuestaPositiva > repusestaNegativa) {
			document.getElementById("rPositiva").style.display = "block";
		}
		else {
			document.getElementById("rNegativa").style.display = "block";
		}
	}

	document.getElementById("pregunta20").style.display = "none";
}