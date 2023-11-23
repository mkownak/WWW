<?php
	$dbhost = 'localhost';
	$dbuser = 'root';
	$dbpass = '';
	$baza = 'moja_strona';
	$login = 'student';
	$haslo = '123';
	
	$link = mysqli_connect($dbhost, $dbuser, $dbpass);
	if (!$link) echo '<b>przerwane polaczenie </b>';
	if(!mysqli_select_db($link, $baza)) echo 'nie wybrano bazy';
?>