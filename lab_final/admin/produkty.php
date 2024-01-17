<?php
	$dbhost = 'localhost';
	$dbuser = 'root';
	$dbpass = '';
	$dbname = 'moja_strona';
	
	$link = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
	
	function DodajProdukt($tytul, $opis, $cena_netto, $podatek_vat, $ilosc_dostepnych_sztuk, $status_dostepnosci, $kategoria, $gabaryt, $zdjecie)
	{
		global $link;

		$tytul_clear = mysqli_real_escape_string($link, $tytul);
		$opis_clear = mysqli_real_escape_string($link, $opis);
		$cena_netto_clear = (float)$cena_netto;
		$podatek_vat_clear = (float)$podatek_vat;
		$ilosc_dostepnych_sztuk_clear = (int)$ilosc_dostepnych_sztuk;
		$status_dostepnosci_clear = mysqli_real_escape_string($link, $status_dostepnosci);
		$kategoria_clear = mysqli_real_escape_string($link, $kategoria);
		$gabaryt_clear = mysqli_real_escape_string($link, $gabaryt);
		$zdjecie_clear = mysqli_real_escape_string($link, $zdjecie);

		$query = "INSERT INTO produkty (tytul, opis, cena_netto, podatek_vat, ilosc_dostepnych_sztuk, status_dostepnosci, kategoria_id, gabaryt, data_utworzenia, data_modyfikacji, data_wygasniecia, zdjecie) VALUES ('$tytul_clear', '$opis_clear', $cena_netto_clear, $podatek_vat_clear, $ilosc_dostepnych_sztuk_clear, '$status_dostepnosci_clear', '$kategoria_clear', '$gabaryt_clear', NOW(), NOW(), '2023-12-31', '$zdjecie')";
    
		if (mysqli_query($link, $query)) {
			echo 'Produkt dodany pomyślnie.';
		} else {
			echo 'Błąd dodawania produktu: ' . mysqli_error($link);
		}
	}
	
	function UsunProdukt($product_id)
	{
		global $link;

		$product_id = mysqli_real_escape_string($link, $product_id);
		
		$query = "DELETE FROM produkty WHERE id = '$product_id'";
		mysqli_query($link, $query);
	}
	
	function FormularzEdycji($id)
	{
		global $link;
		
		$edit_id = mysqli_real_escape_string($link, $id);

		$query = "SELECT * FROM produkty WHERE id = '$id'";
		$result = mysqli_query($link, $query);
		$row = mysqli_fetch_array($result);
		
		$query_kat = "SELECT id, nazwa FROM kategorie";
		$result_kat = mysqli_query($link, $query_kat);
		
		$kategorie = mysqli_fetch_all($result_kat, MYSQLI_ASSOC);

		$tytul = $row['tytul'];
		$opis = $row['opis'];
		$data_wygasniecia = $row['data_wygasniecia'];
		$cena_netto = $row['cena_netto'];
		$podatek_vat = $row['podatek_vat'];
		$gabaryt = $row['gabaryt'];
		$zdjecie = $row['zdjecie'];
		$status_dostepnosci = $row['status_dostepnosci'];
		$ilosc = $row['ilosc_dostepnych_sztuk'];
		
		echo '
		<h4>Edycja Produktu</h4>
		<form method="post">
			<input type="hidden" name="edit_id" value="' . $id . '">
			<label for="tytul">Tytuł:</label>
			<input type="text" name="tytul" value="' . $tytul . '" required>
			<br>
			<label for="tresc">Treść:</label>
			<textarea name="opis" required>' . $opis . '</textarea>
			<br>
			<label for="status_dostepnosci">Status:</label>
			<input type="checkbox" name="status_dostepnosci" ' . ($status_dostepnosci == 1 ? 'checked' : '') . '>
			<br>
			<label for="data_wygasniecia">Data wygaśnięcia:</label>
			<textarea name="data_wygasniecia" required>' . $data_wygasniecia . '</textarea>
			<br>
			<label for="cena_netto">Cena netto:</label>
			<textarea name="cena_netto" required>' . $cena_netto . '</textarea>
			<br>
			<label for="podatek_vat">Podatek Vat:</label>
			<textarea name="podatek_vat" required>' . $podatek_vat . '</textarea>
			<br>
			<label for="ilosc_dostepnych_sztuk">Ilosc:</label>
			<textarea name="ilosc" required>' . $ilosc . '</textarea>
			<br>
			<label for="gabaryt">Gabaryt:</label>
			<textarea name="gabaryt" required>' . $gabaryt . '</textarea>
			<br>
			<label for="zdjeice">Zdjecie:</label>
			<textarea name="zdjecie" required>' . $zdjecie . '</textarea>
			<br>
			<label for="kategoria">Kategoria:</label>
			<select name="kategoria" required>';
			foreach ($kategorie as $kategoria) {
				echo '<option value="' . $kategoria['id'] . '">' . $kategoria['nazwa'] . '</option>';
			}
			echo '</select>
			<br>
			<input type="submit" name="zapiszEdycje" class="button" value="Zapisz">
		</form>
		';
	}
	
	function EdytujProdukt($id, $tytul, $opis, $data_wygasniecia, $cena_netto, $podatek_vat, $gabaryt, $zdjecie, $status_dostepnosci, $ilosc, $kategoria)
	{
		global $link;
		
		$tytul_clear = mysqli_real_escape_string($link, $tytul);
		$opis_clear = mysqli_real_escape_string($link, $opis);
		$data_wygasniecia_clear = mysqli_real_escape_string($link, $data_wygasniecia);
		$cena_netto_clear = (float)$cena_netto;
		$podatek_vat_clear = (float)$podatek_vat;
		$status_dostepnosci_clear = mysqli_real_escape_string($link, $status_dostepnosci);
		$kategoria_clear = mysqli_real_escape_string($link, $kategoria);
		$gabaryt_clear = mysqli_real_escape_string($link, $gabaryt);
		$zdjecie_clear = mysqli_real_escape_string($link, $zdjecie);
		$ilosc_clear = mysqli_real_escape_string($link, $ilosc);
		
		$query = "UPDATE produkty SET tytul='$tytul_clear', opis='$opis_clear', data_wygasniecia='$data_wygasniecia_clear', 
				data_modyfikacji=NOW(), cena_netto='$cena_netto_clear', podatek_vat='$podatek_vat_clear', 
				status_dostepnosci='$status_dostepnosci_clear', ilosc_dostepnych_sztuk='$ilosc_clear', gabaryt='$gabaryt_clear', 
				zdjecie='$zdjecie_clear', kategoria_id='$kategoria_clear' WHERE id='$id'";
		
		mysqli_query($link, $query);
		echo 'Zaktualizowano rekord.';
	}
	
	function PokazProdukty()
	{
		global $link;
		$query = "SELECT produkty.id, produkty.tytul, produkty.opis, produkty.data_utworzenia, produkty.data_modyfikacji, produkty.data_wygasniecia,
		produkty.cena_netto, produkty.podatek_vat, produkty.ilosc_dostepnych_sztuk, produkty.status_dostepnosci, produkty.gabaryt, produkty.zdjecie,
		kategorie.nazwa FROM produkty INNER JOIN kategorie ON produkty.kategoria_id=kategorie.id";
		$result = mysqli_query($link, $query);
		
		    if (mysqli_num_rows($result) > 0) {
				echo '<table border="1">
                <tr>
                    <th>ID</th>
                    <th>Tytuł</th>
                    <th>Opis</th>
                    <th>Cena netto</th>
                    <th>Podatek VAT</th>
                    <th>Ilość</th>
                    <th>Status</th>
                    <th>Kategoria</th>
                    <th>Gabaryt</th>
                    <th>Data utworzenia</th>
                    <th>Data modyfikacji</th>
                    <th>Data wygaśnięcia</th>
					<th>Zdjęcie</th>
                </tr>';

        while ($row = mysqli_fetch_assoc($result)) {
            echo '<tr>
                    <td>' . $row['id'] . '</td>
                    <td>' . $row['tytul'] . '</td>
                    <td>' . $row['opis'] . '</td>
                    <td>' . $row['cena_netto'] . '</td>
                    <td>' . $row['podatek_vat'] . '</td>
                    <td>' . $row['ilosc_dostepnych_sztuk'] . '</td>
                    <td>' . $row['status_dostepnosci'] . '</td>
                    <td>' . $row['nazwa'] . '</td>
                    <td>' . $row['gabaryt'] . '</td>
                    <td>' . $row['data_utworzenia'] . '</td>
                    <td>' . $row['data_modyfikacji'] . '</td>
                    <td>' . $row['data_wygasniecia'] . '</td>
					<td>' . $row['zdjecie'] . '</td>
					<td>
                        <form method="post">
                            <input type="hidden" name="product_id" value="' . $row['id'] . '">
                            <input type="submit" name="delete_product" value="Usuń">
							<input type="submit" name="edit_product" value="Edytuj">
                        </form>
                    </td>
                </tr>';
        }
        echo '</table>';
    } else {
			echo 'Brak produktów do wyświetlenia.';
		}
	}
	
	if (isset($_POST['delete_product'])) {
    $product_id = isset($_POST['product_id']) ? $_POST['product_id'] : '';
    UsunProdukt($product_id);
    }
	
	if (isset($_POST['edit_product'])) {
    $product_id = isset($_POST['product_id']) ? $_POST['product_id'] : '';
    FormularzEdycji($product_id);
    }
	
	if (isset($_POST['zapiszEdycje'])) {
    $product_id = isset($_POST['edit_id']) ? $_POST['edit_id'] : '';
    $tytul = isset($_POST['tytul']) ? $_POST['tytul'] : '';
    $opis = isset($_POST['opis']) ? $_POST['opis'] : '';
    $status_dostepnosci = isset($_POST['status_dostepnosci']) ? 1 : 0; // Ustawiamy na 1, jeśli checkbox jest zaznaczony, w przeciwnym razie na 0
    $data_wygasniecia = isset($_POST['data_wygasniecia']) ? $_POST['data_wygasniecia'] : '';
    $cena_netto = isset($_POST['cena_netto']) ? $_POST['cena_netto'] : '';
    $podatek_vat = isset($_POST['podatek_vat']) ? $_POST['podatek_vat'] : '';
    $ilosc = isset($_POST['ilosc']) ? $_POST['ilosc'] : '';
    $gabaryt = isset($_POST['gabaryt']) ? $_POST['gabaryt'] : '';
    $zdjecie = isset($_POST['zdjecie']) ? $_POST['zdjecie'] : '';
    $kategoria = isset($_POST['kategoria']) ? $_POST['kategoria'] : '';
	
	EdytujProdukt($product_id, $tytul, $opis, $data_wygasniecia, $cena_netto, $podatek_vat, $gabaryt, $zdjecie, $status_dostepnosci, $ilosc, $kategoria);
    }
	
	if (isset($_POST['add_product'])) {
    $tytul = isset($_POST['tytul']) ? $_POST['tytul'] : '';
    $opis = isset($_POST['opis']) ? $_POST['opis'] : '';
    $cena_netto = isset($_POST['cena_netto']) ? $_POST['cena_netto'] : '';
    $podatek_vat = isset($_POST['podatek_vat']) ? $_POST['podatek_vat'] : '';
    $ilosc = isset($_POST['ilosc']) ? $_POST['ilosc'] : '';
    $status = isset($_POST['status']) ? $_POST['status'] : '';
    $kategoria = isset($_POST['kategoria']) ? $_POST['kategoria'] : '';
    $gabaryt = isset($_POST['gabaryt']) ? $_POST['gabaryt'] : '';
	$zdjecie = isset($_POST['zdjecie']) ? $_POST['zdjecie'] : '';

    DodajProdukt($tytul, $opis, $cena_netto, $podatek_vat, $ilosc, $status, $kategoria, $gabaryt, $zdjecie);
	} else {
		global $link;
		
		$query = "SELECT id, nazwa FROM kategorie";
		$result = mysqli_query($link, $query);
		
		$kategorie = mysqli_fetch_all($result, MYSQLI_ASSOC);
		
		echo '
		<h3>Dodawanie Produktu</h3>
		<form method="post" enctype="multipart/form-data">
		<label for="tytul">Tytuł:</label>
		<input type="text" name="tytul" required>
		<br>

		<label for="opis">Opis:</label>
		<textarea name="opis" required></textarea>
		<br>

		<label for="cena_netto">Cena netto:</label>
		<input type="number" name="cena_netto" required>
		<br>

		<label for="podatek_vat">Podatek VAT:</label>
		<input type="number" name="podatek_vat" required>
		<br>

		<label for="ilosc_dostepnych_sztuk">Ilość dostępnych sztuk:</label>
		<input type="number" name="ilosc" required>
		<br>

		<label for="status_dostepnosci">Status dostępności:</label>
		<select name="status" required>
			<option value="1">Dostępny</option>
			<option value="0">Niedostępny</option>
		</select>
		<br>

        <label for="kategoria">Kategoria:</label>
        <select name="kategoria" required>';
        foreach ($kategorie as $kategoria) {
            echo '<option value="' . $kategoria['id'] . '">' . $kategoria['nazwa'] . '</option>';
        }
        echo '</select>
		<br>

		<label for="gabaryt">Gabaryt:</label>
		<input type="text" name="gabaryt" required>
		<br>
		
		<label for="zdjecie">Zdjecie url:</label>
		<input type="text" name="zdjecie" required>
		<br>

		<input type="submit" name="add_product" value="Dodaj produkt">
		</form>
		';
	}
	PokazProdukty();
?>