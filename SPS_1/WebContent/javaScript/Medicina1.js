let fecha = new Date();
let day = parseInt(fecha.getDay()) - 1;
let date = fecha.getDate();
let fechaLunes = parseInt(date) - parseInt(day) + 1;
let dias = ["Lun", "Mar", "Mie", "Jue", "Vie", "Sab"];
let semana = Math.ceil((date - (1 + day)) / 7) - 1;
let hora = '0';
let ultimaHora;


const cambiarHora = function (id) {
	hora = id;
	mostrarCita();

}

const cambiarDia = function (id) {

	switch (id) {

		case "Lun":
			day = 0
			break;

		case "Mar":
			day = 1;
			break;

		case "Mie":
			day = 2;
			break;

		case "Jue":
			day = 3;
			break;

		case "Vie":
			day = 4;
			break;

		case "Sab":
			day = 5;
			break;

	}
	mostrarCita();
}


const cambiarFecha = function () {

	var dia;

	for (var i = 0; i < 6; i++) {
		dia = document.getElementById(dias[i]);
		dia.innerHTML = dias[i] + " " + (parseInt(fechaLunes) + i);
	}


}




const mostrarCita = function () {

	if (parseInt(day) > 5) {
		day = 0;
	}
	var horadelaCita;

	switch (day) {
		case 0:
			horadelaCita = "Lunes"
			break;
		case 1:
			horadelaCita = "Martes"
			break;
		case 2:
			horadelaCita = "Miercoles"
			break;
		case 3:
			horadelaCita = "Jueves"
			break;
		case 4:
			horadelaCita = "Viernes"
			break;
		case 5:
			horadelaCita = "Sabado"
			break;
	}
	horadelaCita += " " + (fecha.getDate() + day) + " ";

	switch (fecha.getMonth()) {
		case 0:
			horadelaCita += "Enero"
			break;
		case 1:
			horadelaCita += "Febrero"
			break;
		case 2:
			horadelaCita += "Marzo"
			break;
		case 3:
			horadelaCita += "Abril"
			break;
		case 4:
			horadelaCita += "Mayo"
			break;
		case 5:
			horadelaCita += "Junio"
			break;
		case 6:
			horadelaCita += "Julio"
			break;
		case 7:
			horadelaCita += "Agosto"
			break;
		case 8:
			horadelaCita += "Septiembre"
			break;
		case 9:
			horadelaCita += "Octubre"
			break;
		case 10:
			horadelaCita += "Noviembre"
			break;
		case 11:
			horadelaCita += "Diciembre"
			break;
	}
	horadelaCita += ": "
	switch (hora) {
		case '0':
			horadelaCita += " 7:00 am"
			break;
		case '1':
			horadelaCita += " 9:00 am"
			break;
		case '2':
			horadelaCita += " 11:00 am"
			break;
		case '3':
			horadelaCita += " 2:00 pm"
			break;
		default:
			horadelaCita += "Error";

	}
	ultimaHora = horadelaCita;
	document.getElementById("fecha").innerHTML = horadelaCita;
	document.getElementById("doctor").innerHTML = document.getElementById(semana + "" + day + "" + hora).textContent;

}



const atrasarSemana = function () {

	if ((fechaLunes) > 8 && fechaLunes > parseInt(date) - parseInt(fecha.getDay()) + 1) {
		semana--;
		fechaLunes = parseInt(fechaLunes) - 7;
	}

	cambiarFecha();
	mostrarCita();
}


const adelantarSemana = function () {

	if ((fechaLunes) < 25) {
		semana++;
		fechaLunes = parseInt(fechaLunes) + 7;
	}
	cambiarFecha();
	mostrarCita();
}


const guardarCita = function () {

	document.getElementById("inputHora").value = ultimaHora;
	document.getElementById("inputDoctor").value = document.getElementById("doctor").textContent;
	
	document.getElementById("escoger-info").style.display = "none";
}


const programar = function () {
	document.getElementById("programar_cita").style.backgroundColor = "rgb(240, 233, 233)";	
	document.getElementById("programar_cita").style.border = "1px solid lightblue";	
	
	/*Reseteando Estilos */	
	document.getElementById("editar_cita").style.backgroundColor = "rgb(243, 243, 243)";	
	document.getElementById("editar_cita").style.border = "none";			
	
	
	document.getElementById("escoger-info").style.display = "flex";
	document.getElementById("citasActuales").style.display = "none";
}



const reprogramar = function () {		

	document.getElementById("editar_cita").style.backgroundColor = "rgb(240, 233, 233)";	
	document.getElementById("editar_cita").style.border = "1px solid lightblue";	
	
	//Reseteando Estilos
	document.getElementById("programar_cita").style.backgroundColor = "rgb(243, 243, 243)";
	document.getElementById("programar_cita").style.border = "none";		
	
	
	document.getElementById("escoger-info").style.display = "none";
	document.getElementById("citasActuales").style.display = "block";
}


const activarColor= function(){
	
	editarColor= document.getElementById("verificar_color");

	
	if(!(editarColor===null)){
		
		document.getElementById("editar_cita").style.backgroundColor = "rgb(240, 233, 233)";	
		document.getElementById("editar_cita").style.border = "1px solid lightblue";	
	}
	
	else{
		document.getElementById("programar_cita").style.backgroundColor = "rgb(240, 233, 233)";	
		document.getElementById("programar_cita").style.border = "1px solid lightblue";		
	}
}

activarColor();