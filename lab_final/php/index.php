<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/Project/PHP/PHPProject.php to edit this template
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
            $nr_indeksu='164400';
            $nrGrupy='2';
            echo 'Michał Kownacki: '.$nr_indeksu.' grupa: '.$nrGrupy.'<br/><br/>';
            
            echo 'Wartość zmiennej a przed zastosowaniem include(): '.$a.'<br/>';
            include 'include_test.php';
            echo 'Wartość zmiennej a po zastosowaniu include(): '.$a.'<br/><br/>';
            
            echo 'Polecenia waruknowe if,else,elif<br/>';
            $b = 3;
            $c = 3;
            echo 'zmienna b='.$b.'<br/>zmienna c='.$c.'<br/>';
            if($b > $c){
                echo 'zmienna b jest większa od zmiennej c<br/>';
            } elseif($b < $c) {
                echo 'zmienna c jest większa od zmiennej b<br/>';
            } else {
                echo 'zmienna b i zmienna c są równe<br/><br/>';
            }
            
            echo 'switch<br/>';
            $d=0;
            switch($d){
                case 0:
                    echo 'zmienna d to: '.$d.'<br/><br/>';
                    break;
                case 1:
                    echo 'zmienna d to: '.$d.'<br/><br>/';
                    break;
            }
            
            echo 'petla for </br>';
            for($i=0; $i<3; $i++){
                echo ''.$i.' ';
            }
            echo '<br/>';
            echo 'petla while <br/>';
            $i = 0;
            while($i < 3){
                echo ''.$i.' ';
                $i++;
            }
            echo '<br/><br/>';
            
            
            echo 'uzycie $_GET: '.htmlspecialchars($_GET["imie"]);
            echo 'uzycie $_GET: '.htmlspecialchars($_POST["imie"]);
            echo '<br/><br/>';
            
            session_start();
            $_SESSION["sesja"]=123;
            echo 'wywolanie zmiennej utworzonej podczas sesji: '.$_SESSION["sesja"].'<br>';
            unset($_SESSION["sesja"]);
            echo 'wywolanie zmiennej utworzonej podczas sesji po jej usunieciu: '.$_SESSION["sesja"].'<br>';
            echo '<br/><br/>';
        ?>
    </body>
</html>
