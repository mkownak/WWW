<?php
	function PokazPodstrone($id)
	{
		//clear $id, to avoid sql injection
		$id_clear = htmlspecialchars($id);
		
		$dbhost = 'localhost';
		$dbuser = 'root';
		$dbpass = '';
		$dbname = 'moja_strona';

		$link = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
		
		$query = "SELECT * FROM page_list WHERE id='$id_clear' LIMIT 1";
		$result = mysqli_query($link,$query);
		$row = mysqli_fetch_array($result);
		
		//wywolywanie strony z bazy
		if(empty($row['id']))
		{
			$web = '[nie_znaleziono_strony]';
		}
		else
		{
			$web = $row['page_content'];
		}
		//echo $web;
		return $web;
		
	}
?>