<!doctype html>
<html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
	<meta http-equiv="Content-Language" content="pl" />
	<meta name="Author" content="Michal Kownacki" />
	<title>Filmy Oscarowe</title>
	<link rel="stylesheet" href="css/stajle.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body style="background-color:DarkGoldenRod;">
	<table class="nav">
		<tr class="nav-buttons">
		  <th><a href="index.php?idp='glowna'">Strona Główna</a></th>
		  <th><a href="html/oscar.html">Czym jest Oscar?</a></th>
		  <th><a href="html/galeria.html">Galeria</a></th>
		  <th><a href="html/funoscar.html">Fun facts</a></th>
		  <th><a href="html/kontakt.html">Kontakt</a></th>
		</tr>
	</table>
	<?php
		error_reporting(E_ALL ^ E_NOTICE ^ E_WARNING);
		/* po tym komentarzu będzie kod do dynamicznego ładowania stron */
		//if($_GET['idp']=='glowna') $strona='/html/glowna.html';
		include('/html/glowna.html');
	?>	
	
</body>
</html>