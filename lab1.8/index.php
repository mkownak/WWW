

<head>
	<meta http-equiv="Content-type" content="text/html; charset=UTF-8" />
	<meta http-equiv="Content-Language" content="pl" />
	<meta name="Author" content="Michal Kownacki" />
	<title>Filmy Oscarowe</title>
	<link rel="stylesheet" href="./css/stajle.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body style="background-color:DarkGoldenRod;">
	<table class="nav">
		<tr class="nav-buttons">
		  <th><a href="index.php?idp=glowna">Strona Główna</a></th>
		  <th><a href="index.php?idp=oscar">Czym jest Oscar?</a></th>
		  <th><a href="index.php?idp=galeria">Galeria</a></th>
		  <th><a href="index.php?idp=funoscar">Fun facts</a></th>
		  <th><a href="index.php?idp=kontakt">Kontakt</a></th>
		  <th><a href="index.php?idp=filmy">Filmy</a></th>
		</tr>
	</table>
	<?php	
		error_reporting(E_ALL ^ E_NOTICE ^ E_WARNING);
		/* po tym komentarzu będzie kod do dynamicznego ładowania stron */
		include('cfg.php');
		include('showpage.php');
		
		if($_GET['idp']=='glowna'){			
			$strona=PokazPodstrone(3);
		} elseif($_GET['idp']=='oscar'){
			$strona=PokazPodstrone(1);
		} elseif($_GET['idp']=='galeria'){
			$strona=PokazPodstrone(2);
		} elseif($_GET['idp']=='funoscar'){
			$strona=PokazPodstrone(4);
		} elseif($_GET['idp']=='kontakt'){
			$strona=PokazPodstrone(5);
		} elseif($_GET['idp']=='filmy') {
			$strona = PokazPodstrone(6);
		} else {
			$strona=PokazPodstrone(3);
			//echo 'nie ma';
		}
		
		
		if($strona){
			echo $strona;
		} else {
			include('./html/glowna.html');
		}
		
		
	?>	
	
</body>
