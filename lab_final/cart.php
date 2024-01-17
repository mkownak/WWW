<?php
	session_start();
	$dbhost = 'localhost';
	$dbuser = 'root';
	$dbpass = '';
	$dbname = 'moja_strona';
	
	$link = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

	function PokazProdukty()
	{
		global $link;
		
		$query = "SELECT produkty.id, produkty.tytul, produkty.opis, 
        produkty.cena_netto, produkty.podatek_vat, produkty.ilosc_dostepnych_sztuk, produkty.gabaryt, produkty.zdjecie,
        kategorie.nazwa
        FROM produkty
        INNER JOIN kategorie ON produkty.kategoria_id=kategorie.id
        WHERE produkty.status_dostepnosci = 1
        AND (produkty.data_wygasniecia > NOW() OR produkty.data_wygasniecia IS NULL)";
		$result = mysqli_query($link, $query);
		
		   if (mysqli_num_rows($result) > 0) 
		   {
				echo '<table border="1">
                <tr>
                    <th>Tytuł</th>
                    <th>Opis</th>
                    <th>Cena netto</th>
                    <th>Podatek VAT</th>
                    <th>Ilość</th>
                    <th>Kategoria</th>
                    <th>Gabaryt</th>
					<th>Zdjęcie</th>
                </tr>';

        while ($row = mysqli_fetch_assoc($result)) 
		{
            echo '<tr>
                    <td>' . $row['tytul'] . '</td>
                    <td>' . $row['opis'] . '</td>
                    <td>' . $row['cena_netto'] . '</td>
                    <td>' . $row['podatek_vat'] . '</td>
                    <td>' . $row['ilosc_dostepnych_sztuk'] . '</td>
                    <td>' . $row['nazwa'] . '</td>
                    <td>' . $row['gabaryt'] . '</td>
					<td>' . $row['zdjecie'] . '</td>
					<td>
                        <form method="post">
                            <input type="hidden" name="product_id" value="' . $row['id'] . '">
                            <input type="submit" name="add_product" value="Dodaj do koszyka">
                        </form>
                    </td>
                </tr>';
        }
        echo '</table>';
    } else {
			echo 'Brak produktów do wyświetlenia.';
		}
	}
	
// Funkcja dodająca produkt do koszyka
function DodajDoKoszyka($product_id)
{
    global $link;

    // sprawdzenie czy produkt znajduje sie już w koszyku
    $indexProduktu = array_search($product_id, array_column($_SESSION['koszyk'], 'id'));

    if ($indexProduktu !== false) {
        echo 'Produkt jest już w koszyku.';
        return;
    }

    $query = "SELECT * FROM produkty WHERE id = '$product_id'";
    $result = mysqli_query($link, $query);

    if ($result && $row = mysqli_fetch_assoc($result)) {
        $produkt = [
            'id' => $row['id'],
            'tytul' => $row['tytul'],
            'cena_netto' => $row['cena_netto'],
            'podatek_vat' => $row['podatek_vat'],
            'ilosc_dostepnych' => $row['ilosc_dostepnych_sztuk'],
            'ilosc' => 1,
        ];

        // Dodaj do koszyka, gdy jest on na stanie
        if ($produkt['ilosc_dostepnych'] > 0) {
            $_SESSION['koszyk'][] = $produkt;
            echo 'Produkt dodany do koszyka.';
        } else {
            echo 'Produkt jest niedostępny.';
        }
    } else {
        echo 'Błąd pobierania danych produktu.';
    }
}

// Funkcja usuwająca produkt z koszyka
function UsunZKoszyka($product_id)
{
    foreach ($_SESSION['koszyk'] as $key => $produkt) {
        if ($produkt['id'] == $product_id) {
            unset($_SESSION['koszyk'][$key]);
            echo 'Produkt usunięty z koszyka.';
            break;
        }
    }
}

// Funkcja aktualizująca ilość produktu w koszyku
function ZaktualizujIlosc($product_id, $quantity)
{
    foreach ($_SESSION['koszyk'] as &$produkt) {
        if ($produkt['id'] == $product_id) {
            // Sprawdzenie czy nowa ilość nie przekracza dostępnej ilości
            $quantity = min($quantity, $produkt['ilosc_dostepnych']);
            $produkt['ilosc'] = $quantity;
            echo 'Ilość produktu zaktualizowana.';
            break;
        }
    }
}

// Funkcja finalizująca zakup
function FinalizujZakup()
{
    global $link;

    // Aktualizacja bazy danych
    foreach ($_SESSION['koszyk'] as $produkt) {
        $product_id = $produkt['id'];
        $quantity = $produkt['ilosc'];

        $query = "UPDATE produkty SET ilosc_dostepnych_sztuk = ilosc_dostepnych_sztuk - $quantity WHERE id = '$product_id'";
        mysqli_query($link, $query);
    }

    // Wyczyść sesję
    $_SESSION['koszyk'] = [];
	session_destroy();
    echo 'Zakup został sfinalizowany.';

}

// Funkcja obliczająca sumę dla danego produktu (ilość * cena netto + podatek VAT)
function ObliczSume($produkt)
{
    $suma = $produkt['ilosc'] * $produkt['cena_netto'];
    $suma += $suma * ($produkt['podatek_vat'] / 100); // Dodaj podatek VAT
    return $suma;
}

// Funkcja obliczająca sumę koszyka
function ObliczSumeKoszyka()
{
    $suma = 0;
    foreach ($_SESSION['koszyk'] as $produkt) {
        $suma += ObliczSume($produkt);
    }
    return $suma;
}

function Koszyk()
{
    if (!isset($_SESSION['koszyk'])) {
        $_SESSION['koszyk'] = [];
    }

    if (isset($_POST['add_product'])) {
        DodajDoKoszyka($_POST['product_id']);
    }

    if (isset($_POST['remove_from_cart'])) {
        UsunZKoszyka($_POST['product_id']);
    }

    if (isset($_POST['update_quantity'])) {
        ZaktualizujIlosc($_POST['product_id'], $_POST['quantity']);
    }
	
	if (isset($_POST['finalize_purchase'])) {
        FinalizujZakup();
    }

    echo '<h2>Koszyk</h2>';

    if (empty($_SESSION['koszyk'])) {
        echo 'Koszyk jest pusty.';
    } else {
        echo '<table border="1">
                <tr>
                    <th>Tytuł</th>
                    <th>Ilość</th>
                    <th>Cena netto</th>
                    <th>Podatek VAT</th>
                    <th>Suma</th>
                    <th>Akcje</th>
                </tr>';

        foreach ($_SESSION['koszyk'] as $produkt) {
            echo '<tr>
                    <td>' . $produkt['tytul'] . '</td>
                    <td>
                        <form method="post">
                            <input type="hidden" name="product_id" value="' . $produkt['id'] . '">
                            <input type="number" name="quantity" value="' . $produkt['ilosc'] . '" min="1" max="' . $produkt['ilosc_dostepnych'] . '">
                            <input type="submit" name="update_quantity" value="Aktualizuj">
                        </form>
                    </td>
                    <td>' . $produkt['cena_netto'] . '</td>
                    <td>' . $produkt['podatek_vat'] . '</td>
                    <td>' . ObliczSume($produkt) . '</td>
                    <td>
                        <form method="post">
                            <input type="hidden" name="product_id" value="' . $produkt['id'] . '">
                            <input type="submit" name="remove_from_cart" value="Usuń">
                        </form>
                    </td>
                </tr>';
        }

        echo '<tr>
                <td colspan="4"><strong>Suma koszyka:</strong></td>
                <td>' . ObliczSumeKoszyka() . '</td>
                <td>
				<form method="post">
                    <input type="submit" name="finalize_purchase" value="Finalizuj">
                </form>
				</td>
            </tr>';

        echo '</table>';
    }
}

// Wywołaj funkcję PokazProdukty
PokazProdukty();

// Wywołaj funkcję Koszyk
Koszyk();
?>