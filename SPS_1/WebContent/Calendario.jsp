<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link href="css/Calendario.css" rel="stylesheet" />
    <script src="javaScript/Calendario.js" type="text/javascript"></script>
    <meta charset="utf-8" />
    <title>Plataforma Telesalud/Calendario</title>
</head>
<body>
	<jsp:include page="Header.html"/>

    <table id="calendar">
        <caption></caption>
        <thead>
            <tr>
                <th>Lun</th>
                <th>Mar</th>
                <th>Mie</th>
                <th>Jue</th>
                <th>Vie</th>
                <th>Sab</th>
                <th>Dom</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
	<script>
    	mostrarCalendario(actual.getFullYear(), actual.getMonth() + 1);
	</script>

</body>

</html>