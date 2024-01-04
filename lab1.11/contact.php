<?php
function PokazKontakt()
{
    echo '<h2>Formularz kontaktowy</h2>';
    echo '<form method="post" action="contact.php">';
    echo '<label for="temat">Temat:</label>';
    echo '<input type="text" name="temat" id="temat" required>';
    echo '<br>';
    echo '<label for="tresc">Treść:</label>';
    echo '<textarea name="tresc" id="tresc" required></textarea>';
    echo '<br>';
    echo '<label for="email">Twój email:</label>';
    echo '<input type="email" name="email" id="email" required>';
    echo '<br>';
    echo '<input type="submit" name="submit" value="Wyślij">';
    echo '</form>';
}

function PrzypomnijHaslo()
{
    echo 'przypomnijhaslo';
}

function WyslijMailKontakt($odbiorca)
{
    if (empty($_POST['temat']) || empty($_POST['tresc']) || empty($_POST['email'])) {
        echo '[nie_wypelniles_pola]';
        PokazKontakt();
    } else {
		$mail['subject'] = htmlspecialchars($_POST['temat']);
        $mail['body'] = htmlspecialchars($_POST['tresc']);
        $mail['sender'] = htmlspecialchars($_POST['email']);
        $mail['recipient'] = $odbiorca;

        $header = "From: Formularz kontaktowy <" . $mail['sender'] . ">\n";
        $header .= "MIME-version: 1.0\nContent-Type: text/plain; charset=utf-8\nContent-Transfer-Encoding: 8bit\n";
        $header .= "X-Sender: <" . $mail['sender'] . ">\n";
        $header .= "X-Mailer: PHP/" . phpversion() . "\n";
        $header .= "X-Priority: 3\n";
        $header .= "Return-Path: <" . $mail['sender'] . ">\n";

        if (mail($mail['recipient'], $mail['subject'], $mail['body'], $header)) {
            echo '[wiadomosc_wyslana]';
        } else {
            echo '[blad_wysylania]';
        }
    }
}

if (isset($_POST['submit'])) {
    WyslijMailKontakt('kownakos@gmail.com');
    echo 'wysylanie';
} else {
    PokazKontakt();
}
?>
