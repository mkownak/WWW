<?php
session_start();

include('../cfg.php');

function ListaPodstron()
{
	$query="SELECT * FROM page_list ORDER BY data DESC LIMIT 100";
	$result = mysql_query($query);
	
	while($row = mysql_fetch_array($result))
	{
		row['id'].' '.$row['tytul'].' <br />';
	}
}

class Admin
{
    private $login;
    private $haslo;

    public function __construct($login, $haslo)
    {
        $this->login = $login;
        $this->haslo = $haslo;
    }

    public function FormularzLogowania()
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

    public function SprawdzLogowanie($login, $haslo)
    {
        if ($login == $this->login && $haslo == $this->haslo) {
            $_SESSION['logged_in'] = true;
            return true;
        } else {
            return false;
        }
    }

    public function Wyloguj()
    {
        $_SESSION['logged_in'] = false;
        session_destroy();
    }

    // Dodaj tutaj inne metody administracyjne

    public function DostepDoMetodyAdministracyjnej()
    {
        if ($_SESSION['logged_in']) {
            // Tutaj znajdzie się kod dla dostępu do metody administracyjnej
            echo 'Jesteś zalogowany. Dostęp do metody administracyjnej!';
        } else {
            echo 'Brak dostępu. Proszę się zalogować.';
            echo $this->FormularzLogowania();
        }
    }
}

// Utwórz obiekt admina
$admin = new Admin($login, $haslo);

// Sprawdź, czy formularz logowania został przesłany
if (isset($_POST['x1_submit'])) {
    $login_email = $_POST['login_email'];
    $login_haslo = $_POST['login_haslo'];

    // Sprawdź logowanie
    if ($admin->SprawdzLogowanie($login_email, $login_haslo)) {
        echo 'Zalogowano pomyślnie.';
		ListaPodstron();
    } else {
        echo 'Błąd logowania. Spróbuj ponownie.';
        echo $admin->FormularzLogowania();
    }
} else {
    // Wyświetl formularz logowania
    echo $admin->FormularzLogowania();
}

?>
