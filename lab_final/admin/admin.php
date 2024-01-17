<?php


include('../cfg.php');
session_start();

function FormularzLogowania()
{
    $wynik = '
    <div class="logowanie">
        <h1 class="heading">Panel CMS:</h1>
            <div class="logowanie">
                <form method="post" name="LoginForm" enctype="multipart/form-data" action="'.$_SERVER['REQUEST_URI'].'">
                    <table class="logowanie">
                        <tr><td class="log4_t">Login:</td><td><input type="text" name="login_email" class="logowanie" /></td></tr>
                        <tr><td class="log4_t">Hasło:</td><td><input type="password" name="login_haslo" class="logowanie" /></td></tr>
                        <tr><td>&nbsp;</td><td><input type="submit" name="x1_submit" class="logowanie" value="Zaloguj" /></td></tr>
                    </table>
                </form>
            </div>
    </div>
    ';

    return $wynik;
}

function EdytujPodstrone($edit_id)
{
	global $link;

	$edit_id = mysqli_real_escape_string($link, $edit_id);

	$query = "SELECT * FROM page_list WHERE id = '$edit_id'";
	$result = mysqli_query($link, $query);
	$row = mysqli_fetch_array($result);

	$tytul = $row['page_title'];
	$tresc = $row['page_content'];
	$status = $row['status'];

	echo '
		<form method="post">
			<input type="hidden" name="edit_id" value="' . $edit_id . '">
			<label for="tytul">Tytuł:</label>
			<input type="text" name="tytul" value="' . $tytul . '" required>
			<br>
			<label for="tresc">Treść:</label>
			<textarea name="tresc" required>' . $tresc . '</textarea>
			<br>
			<label for="aktywna">Aktywna:</label>
			<input type="checkbox" name="status" ' . ($status == 1 ? 'checked' : '') . '>
			<br>
			<input type="submit" name="zapiszEdycje" class="button" value="Zapisz">
		</form>
	';
}

function ZapiszEdycje($edit_id, $tytul, $tresc, $status)
{
	global $link;

	$edit_id = mysqli_real_escape_string($link, $edit_id);
	$tytul = mysqli_real_escape_string($link, $tytul);
	$tresc = mysqli_real_escape_string($link, $tresc);
	$status = $status ? 1 : 0;

	$query = "UPDATE page_list SET page_title='$tytul', page_content='$tresc', status='$status' WHERE id='$edit_id'";
	mysqli_query($link, $query);

	echo 'Zaktualizowano rekord.';
}

function DodajPodstrone($tytul,$tresc,$status)
{
	global $link;
	
	$tytul = mysqli_real_escape_string($link, $tytul);
	$tresc = mysqli_real_escape_string($link, $tresc);
	$status = $status ? 1 : 0;
	
	$query = "INSERT INTO page_list (page_title, page_content, status) VALUES ('$tytul', '$tresc', '$status')";
	mysqli_query($link, $query);
	
	echo 'dodano';
}

function UsunPodstrone($page_id)
{
	global $link;
	
	$page_id = mysqli_real_escape_string($link, $page_id);
	
	$query = "DELETE FROM page_list WHERE id = '$page_id'";
	mysqli_query($link, $query);
}

function ListaPodstron()
{		
	global $link;
		
	$query = "SELECT * FROM page_list LIMIT 100";
	$result = mysqli_query($link,$query);
	
    echo '<table border="1">
            <tr>
                <th>ID</th>
                <th>Tytuł podstrony</th>
                <th>Akcje</th>
            </tr>';
    
    while ($row = mysqli_fetch_array($result))
    {
        echo '<tr>
                <td>'.$row['id'].'</td>
                <td>'.$row['page_title'].'</td>
                <td>
					<form method="post">
						<input type="hidden" name="edit_id" value="'.$row['id'].'">
						<input type="submit" name="EdytujPodstrone" class="button" value=Edytuj />
						<input type="submit" name="UsunPodstrone" class="button" value=Usuń />
					</form>
                </td>
              </tr>';
    }
    
    echo '</table>';
}

if (isset($_POST['x1_submit'])) {
    $login_form = isset($_POST['login_email']) ? $_POST['login_email'] : '';
    $pass_form = isset($_POST['login_haslo']) ? $_POST['login_haslo'] : '';

    if ($login_form == $login && $pass_form == $pass) {
        // Zalogowano poprawnie, ustaw zmienne sesji
        $_SESSION['logged_in'] = true;
        echo 'zalogowano <br/>';
    } else {
        // Błąd logowania, wyświetl komunikat i formularz logowania
        echo "Błąd logowania. Spróbuj ponownie.";
    }
}


if (isset($_POST['zapiszEdycje'])) {
	$edit_id = isset($_POST['edit_id']) ? $_POST['edit_id'] : '';
	$tytul = isset($_POST['tytul']) ? $_POST['tytul'] : '';
	$tresc = isset($_POST['tresc']) ? $_POST['tresc'] : '';
	$status = isset($_POST['status']) ? $_POST['status'] : '';

	ZapiszEdycje($edit_id, $tytul, $tresc, $status);
}

if (isset($_POST['UsunPodstrone'])) {
$edit_id = isset($_POST['edit_id']) ? $_POST['edit_id'] : '';
UsunPodstrone($edit_id);
// echo $edit_id;
}

if (isset($_POST['DodajPodstrone'])) {
$tytul = isset($_POST['tytul']) ? $_POST['tytul'] : '';
$tresc = isset($_POST['tresc']) ? $_POST['tresc'] : '';
$status = isset($_POST['status']) ? $_POST['status'] : '';
DodajPodstrone($tytul,$tresc,$status);
}

// Jeśli nie zalogowano, wyświetl formularz logowania
if (!isset($_SESSION['logged_in']) || !$_SESSION['logged_in']) {
    echo FormularzLogowania();
} else {
	ListaPodstron();
	echo '<h4>formularz dodawania podstrony</h4>';
	echo '
        <form method="post">
            <label for="tytul">Tytuł:</label>
            <input type="text" name="tytul" required>
            <br>
            <label for="tresc">Treść:</label>
            <textarea name="tresc" required></textarea>
            <br>
            <label for="aktywna">Aktywna:</label>
            <input type="checkbox" name="status" checked>
            <br>
            <input type="submit" name="DodajPodstrone" class="button" value="Dodaj">
        </form>
    ';
	
	if (isset($_POST['EdytujPodstrone'])) {
	$edit_id = isset($_POST['edit_id']) ? $_POST['edit_id'] : '';
	EdytujPodstrone($edit_id);
	//echo $edit_id;
	}
}

?>
