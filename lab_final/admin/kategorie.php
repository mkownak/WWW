<?php
	$dbhost = 'localhost';
	$dbuser = 'root';
	$dbpass = '';
	$dbname = 'moja_strona';

	$link = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
	
	function DodajKategorieGlowna($nazwa)
	{
		global $link;
		
		$nazwa = mysqli_real_escape_string($link, $nazwa);
		
		$query = "INSERT INTO kategorie (nazwa) VALUES ('$nazwa')";
		mysqli_query($link, $query);
	
		echo 'dodano';
	}
	
	function FormularzDodajPodkategorie($matka_id)
	{
		echo '
		<h4>Dodaj podkategorie</h4>
		<form method="post">
			<input type="hidden" name="matka_id" value="' . $matka_id . '">
			<label for="nazwa">Nazwa:</label>
			<input type="text" name="nazwa" value="" required>
			<input type="submit" name="DodajPodkategorie" class="button" value="Dodaj">
		</form>
		';
	}
	
	function DodajPodkategorie($matka_id, $nazwa)
	{
		global $link;
		
		$matka_id = mysqli_real_escape_string($link, $matka_id);
		$nazwa = mysqli_real_escape_string($link, $nazwa);
		
		
		$query = "INSERT INTO kategorie (nazwa,matka) VALUES ('$nazwa','$matka_id')";
		mysqli_query($link, $query);
	
		echo 'dodano';
	}

	function EdytujKategorie($id)
	{
		global $link;

		$edit_id = mysqli_real_escape_string($link, $id);

		$query = "SELECT * FROM kategorie WHERE id = '$id'";
		$result = mysqli_query($link, $query);
		$row = mysqli_fetch_array($result);

		$nazwa = $row['nazwa'];
		
		echo '
		<h4>Edycja</h4>
		<form method="post">
			<input type="hidden" name="id" value="' . $id . '">
			<label for="nazwa">Nazwa:</label>
			<input type="text" name="nazwa" value="' . $nazwa . '" required>
			<input type="submit" name="zapiszEdycje" class="button" value="Zapisz">
		</form>
		';
	}
	
	function zapiszEdycje($id, $nazwa)
	{
		global $link;
		$id = mysqli_real_escape_string($link, $id);
		$nazwa = mysqli_real_escape_string($link, $nazwa);
		
		$query = "UPDATE kategorie SET nazwa='$nazwa' WHERE id='$id'";
		mysqli_query($link, $query);

		echo 'Zaktualizowano rekord.';
	}
	
	function UsunKategorie($id)
	{
		global $link;

		$delete_id = mysqli_real_escape_string($link, $id);

		// Sprawdź, czy kategoria posiada podkategorie
		$check_query = "SELECT id FROM kategorie WHERE matka = '$id'";
		$check_result = mysqli_query($link, $check_query);

		if ($check_result->num_rows > 0) {
			echo 'Nie można usunąć kategorii z podkategoriami.';
		} else {
			$delete_query = "DELETE FROM kategorie WHERE id = '$delete_id'";
			mysqli_query($link, $delete_query);

			echo 'Usunięto kategorię.';
		}
	}
	
	function PokazKategorie($parentID = 0, $space = 0)
	{
		global $link;
		$query = "SELECT id, nazwa FROM kategorie WHERE matka = '$parentID'";
		$result = mysqli_query($link, $query);

		if ($result->num_rows > 0) {
			echo '<ul>';  // Rozpoczęcie listy
			while ($row = $result->fetch_assoc()) {
				echo '<li>';
				echo str_repeat('...', $space) . $row['nazwa'];

				// Dodanie formularza z przyciskami
				echo '<form method="post" action="">';
				echo '<input type="hidden" name="id" value="' . $row['id'] . '">';

				echo ' <button type="submit" name="formularz_dodaj_podkategorie">Dodaj podkategorie</button>';
				echo ' <button type="submit" name="usun">Usuń</button>';
				echo ' <button type="submit" name="edytuj">Edytuj</button>';

				echo '</form>';

				echo '</li>';

				// Rekurencyjne wywołanie dla podkategorii
				PokazKategorie($row['id'], $space + 1);
			}
			echo '</ul>';  // Zamknięcie listy
		}
	}

	if (isset($_POST['edytuj'])) 
	{
		$edit_id = isset($_POST['id']) ? $_POST['id'] : '';
		EdytujKategorie($edit_id);
	}
	
	if (isset($_POST['zapiszEdycje'])) 
	{
		$edit_id = isset($_POST['id']) ? $_POST['id'] : '';
		$nazwa = isset($_POST['nazwa']) ? $_POST['nazwa'] : '';

		ZapiszEdycje($edit_id, $nazwa);
	}
	
	if (isset($_POST['dodaj_glowna']))
	{
		$nazwa = isset($_POST['nazwa']) ? $_POST['nazwa'] : '';
		DodajKategorieGlowna($nazwa);
	} else {
		echo '
		<h4>Dodaj kategorie główną</h4>
        <form method="post">
            <label for="tytul">Nazwa:</label>
            <input type="text" name="nazwa" required>
            <input type="submit" name="dodaj_glowna" class="button" value="Dodaj">
        </form>
    ';
	}
	
	if (isset($_POST['formularz_dodaj_podkategorie']))
	{
		$matka_id = isset($_POST['id']) ? $_POST['id'] : '';
		FormularzDodajPodkategorie($matka_id);
	}
	
	if (isset($_POST['DodajPodkategorie']))
	{
		$matka_id = isset($_POST['matka_id']) ? $_POST['matka_id'] : '';
		$nazwa = isset($_POST['nazwa']) ? $_POST['nazwa'] : '';
		
		DodajPodkategorie($matka_id, $nazwa);
	}
	
	if (isset($_POST['usun']))
	{
		$id = isset($_POST['id']) ? $_POST['id'] : '';
		
		UsunKategorie($id);
	}
	
	PokazKategorie();
?>