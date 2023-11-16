-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 16 Lis 2023, 14:03
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `moja_strona`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `page_list`
--

CREATE TABLE `page_list` (
  `id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_content` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `page_list`
--

INSERT INTO `page_list` (`id`, `page_title`, `page_content`, `status`) VALUES
(1, 'oscar', '	<div class=\"opis\">\r\n		<h1 class=\"title\">Czym jest Oscar?</h1>\r\n		<p><b>Oscar</b>, znany też jako <b>Nagroda Akademii Filmowej</b> – nagroda filmowa przyznawana corocznie przez Amerykańską Akademię Sztuki i Wiedzy Filmowej. Pierwsze rozdanie odbyło się w 1929. Nagradzane są wstępnie nominowane filmy, które w poprzedzającym roku kalendarzowym były wyświetlane w amerykańskich kinach. Uroczystość wręczenia Oscarów odbywa się zwykle wczesną wiosną. Oscary, z wyłączeniem jednej kategorii, przyznawane są przeważnie filmom anglojęzycznym. Ceremonia rozdania Oscarów od 2002 roku odbywa się w Teatrze Dolby w Hollywood.\r\n		<h2>Historia</h2>\r\n		<p>Nagrody Akademii Filmowej ufundowano w tym samym roku <i>(1927)</i>, co samą Akademię, skupiającą amerykańskich filmowców. <span style=\"color:red\">Pierwsze nagrody zostały zaprezentowane w 1929 roku w Hollywood Roosevelt Hotel przy udziale 250 osób, ówczesna gala trwała zaledwie 15 minut.</span> Ceremonię poprowadził aktor Douglas Fairbanks, który ogłosił 12 zwycięzców w różnych kategoriach. Początkowo Oscary budziły umiarkowane zainteresowanie, a przedstawiciele mediów opuścili pierwszą galę jeszcze przed jej zakończeniem. Do zwiększenia popularności nagród przyczyniły się media, radio, a następnie telewizja\r\n		<h2>Statuetka</h2>\r\n		<p>Nagrodą jest statuetka rycerza opierającego się na dwuręcznym mieczu, stojącego na rolce filmu posiadającej pięć szprych, z której każda symbolizuje jedną z grup zawodowych reprezentowanych w Akademii: aktorów, scenarzystów, reżyserów, producentów i techników. Statuetka waży ok. 3,9 kg (8,5 funta) i ma ok. 35 cm (13,5 cala) wysokości. Wykonana jest z tzw. <u>„britannium”</u>, czyli stopu cyny (93%), antymonu (5%) i miedzi (2%), pokrytego 24-karatowym złotem. Statuetkę zaprojektował <b>Cedric Gibbons</b> w 1928 r. (według legendy pierwszy szkic wykonał na serwetce podczas bankietu), a jej odlew wykonał rzeźbiarz <b>George Stanley.</b> W latach 1942, 1943 i 1944 statuetki zamiast z metalu wykonano z gipsu. Było to wyrazem troski Akademii Filmowej o losy wojny. Statuetki gipsowe wymieniono laureatom na metalowe w 1946.</p>\r\n		<h2>Kategorie, oraz wybrane podkategorie</h2>\r\n		<p>W 1929 roku po raz pierwszy Nagrody Akademii przyznano w 13 kategoriach. Oscary są przyznawane w 24 kategoriach (w każdej z nich ogłasza się od 2 do 5 nominacji, oprócz kategorii „Najlepszy film” w której od 2009 roku nominuje się 10 filmów):</p>\r\n		<h3>Produkcja</h3>\r\n			<ul>\r\n			  <li>Najlepszy film</li>\r\n			  <li>Najlepszy reżyser</li>\r\n			  <li>Najlepszy scenariusz oryginalny</li>\r\n			  <li>Najlepszy adaptowany</li>\r\n			</ul>\r\n		<h3>Aktorskie</h3>\r\n			<ul>\r\n			  <li>Najlepszy aktor</li>\r\n			  <li>Najlepszy aktroka</li>\r\n			  <li>Najlepszy aktor drugoplanowy</li>\r\n			  <li>Najlepszy aktorka drugoplanowa</li>\r\n			</ul>\r\n		<h3>Wizualne</h3>\r\n			<ul>\r\n			  <li>Najlepsza scenografia i dekoracja wnętrz</li>\r\n			  <li>Najlepsze zdjęcia</li>\r\n			  <li>Najlepszy montaż</li>\r\n			</ul>\r\n		<p>inne kategorie to:<i> dźwięk i efekty specjalne, muzyczne, kostiumy i charakteryzacja, animacje, dokumentalne, okolicznosciowe.</i></p>\r\n	</div>\r\n	<div class=\"wiki\">\r\n		<a href=\"https://pl.wikipedia.org/wiki/Nagroda_Akademii_Filmowej\">powyższe inforamcje zaczerpnięte z strony wikipedia.org</a>\r\n	</div>', 1),
(2, 'galeria', '<div class=\"title\">\r\n		<h1>Galeria</h1>\r\n	</div>\r\n	<p>tutaj przedstawię filmy nagrodzone Oscarem za najlepszy film po roku 2000<p>\r\n	<table class=\"movies\">\r\n		<tr class=\"column-name\">\r\n		  <th>Tytuł</th>\r\n		  <th>Plakat</th>\r\n		  <th>Reżyser</th>\r\n		  <th>Opis</th>\r\n		  <th>Czy polecam?</th>\r\n		</tr>\r\n		<tr>\r\n		  <td>Gladiator (2000)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/gladiator.jpg\"></td>\r\n		  <td>Ridley Scott</td>\r\n		  <td>Epicka opowieść o odwadze i zemście osadzona w realiach Cesarstwa Rzymskiego roku 180 n.e.</td>\r\n		  <td class=\"ocena-p\">TAK</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>Za wszelką cenę (2004)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/baby.jpg\"></td>\r\n		  <td>Clint Eastwood</td>\r\n		  <td>Trener boksu Frankie zostaje poproszony przez Maggie o trenowanie jej. Mężczyzna niechętnie bierze 32-latkę pod swoje skrzydła, ale wraz z tą decyzją ich życie całkowicie się zmienia.</td>\r\n		  <td class=\"ocena-p\">TAK</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>To nie jest kraj dla starych ludzi (2007)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/men.jpg\"></td>\r\n		  <td>Joel Coen, Ethan Coen</td>\r\n		  <td>Opowiada historię teksańskiego robotnika, Llewelyna Mossa (Josh Brolin), który przypadkowo znajduje na pustyni kilka samochodów wraz ze zwłokami meksykańskich handlarzy narkotyków. Przy jednym z trupów bohater odkrywa walizkę z dwoma milionami dolarów.</td>\r\n		  <td class=\"ocena-p\">TAK</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>Slumdog. Milioner z ulicy (2008)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/slum.jpg\"></td>\r\n		  <td>Danny Boyle</td>\r\n		  <td>Jamal Malik (Dev Patel) to biedny chłopak ze slumsów. Postanawia wziąć udział w indyjskiej edycji \"Milionerów\", aby poprzez występ w programie odnaleźć swoją dawną miłość. Błyskawicznie odpowiada na pytania i pnie się coraz wyżej, co wzbudza podejrzenia prowadzącego.</td>\r\n		  <td class=\"ocena-n\">NIE</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>Incepcja (2010)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/incepcja.jpeg\"></td>\r\n		  <td>Christopher Nolan</td>\r\n		  <td>Film opowiada o możliwościach ingerowania w ludzki umysł dzięki zaawansowanej technologii umożliwiającej wpływ na marzenia senne. Głównym bohaterem filmu jest Cobb (Leonardo DiCaprio), szef zespołu specjalizującego się w dokonywaniu włamań do snów innych osób.</td>\r\n		  <td class=\"ocena-p\">TAK</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>Czarny łabędź (2010)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/czarny.jpg\"></td>\r\n		  <td>Darren Aronofsky</td>\r\n		  <td>Thriller psychologiczny rozgrywający się w środowisku nowojorskich tancerzy klasycznych. Natalie Portman wciela się w Ninę – baletnicę, która zaczyna rywalizować z nową członkinią zespołu tanecznego, Lily. Wrażliwa Nina kocha taniec, który jest całym jej życiem.</td>\r\n		  <td class=\"ocena-n\">NIE</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>Django (2012)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/django.jpg\"></td>\r\n		  <td>Quentin Tarantino</td>\r\n		  <td>Bohaterem Django jest tytułowy czarnoskóry niewolnik (Jamie Foxx), który po wyzwoleniu przez niemieckiego łowcę głów (Christoph Waltz) przemierza z nim południe Stanów Zjednoczonych w poszukiwaniu wyjętych spod prawa, a później – w celu odnalezienia żony Django.</td>\r\n		  <td class=\"ocena-p\">TAK</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>Mad Max: Na drodze gniewu (2015)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/max.jpg\"></td>\r\n		  <td>George Miller</td>\r\n		  <td>Prześladowany przez demony przeszłości Mad Max uważa, że najlepszym sposobem na przeżycie jest samotna wędrówka po świecie. Zostaje jednak wciągnięty do grupy uciekinierów przemierzających tereny spustoszone przez wojnę nuklearną (Wasteland) w pojeździe zwanym War Rig, prowadzonym przez Imperatorkę Furiosę.</td>\r\n		  <td class=\"ocena-p\">TAK</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>Uciekaj! (2017)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/run.jpg\"></td>\r\n		  <td>Jordan Peele</td>\r\n		  <td>Film opowiada historię czarnoskórego fotografa o imieniu Chris (w tej roli Daniel Kaluuya), który wybrał się ze swoją białą dziewczyną Rose (Allison Williams) w jej rodzinne strony. Tam poznaje bliskich ukochanej i odkrywa o nich przerażającą prawdę.</td>\r\n		  <td class=\"ocena-p\">TAK</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>Top Gun: Maverick (2022)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/top.jpg\"></td>\r\n		  <td>Joseph Kosinski</td>\r\n		  <td>Po 30. latach kapitan Pete „Maverick\" Mitchell (Tom Cruise) staje na czele legendarnej szkoły pilotów Top Gun. Jego zadaniem jest wyszkolenie grupy pilotów do wyjątkowo trudnej misji. Aby to zadanie zostało zwieńczone sukcesem z bandy indywidualistów musi stworzyć zgrany zespół.</td>\r\n		  <td class=\"ocena-p\">TAK</td>\r\n		</tr>	\r\n	</table>\r\n', 1),
(3, 'glowna', '<img class=\"statue1\" src=\"images/oskar.png\">\r\n<img class=\"statue2\" src=\"images/oskar.png\">\r\n<p class=\"opis\">Witaj na stronie poświęconej filmom oscarowych, a szczególnie tym, które zostały nagrodzone po roku 2000. Sama ceremonia wręczenia nagrody przyciąga uwagę wielu filmowych entuzjastów na całym świecie przed telewizory. Na tej stronie przedstawię trochę historii o tej nagrodzie oraz wybiorę parę filmów, które bym polecił lub też nie.</p>', 1),
(4, 'funoscar', '\r\n	<div class=\"title\">\r\n		<h1>Fun Facts o nagrodzie Oscara</h1>\r\n	</div>\r\n	<div class=\"opis\">\r\n		<h2>Przemowy</h2>\r\n		<img  class=\"statue1\" src=\"./images/leo.jpg\">\r\n		<p>Niektóre ekstremalnie krótkie, inne - niemiłosiernie się dłużące. Od pewnego czasu Akademia Filmowa wprowadziła <b>45-sekundowy limit</b> na przemowy i podziękowania, w którym muszą zmieścić się laureaci. Wcześniej nagminnie zdarzało się przynudzanie (Greer Garson za rolę w \"Pani Miniver\" mówiła prawie 7 minut). Z kolei <u>Alfred Hitchcock i William Holden</u> podziękowali zdawkowym \"Thank you\", a <u>Gwyneth Paltrow</u> podziękowała jednej osobie w swojej przemowie aż... 23 razy</p>\r\n		<br>\r\n		<h2>Najsłynniejsze \"selfie\" na oscarowej gali</h2>\r\n		<img class=\"statue2\" src=\"./images/selfie.jfif\">\r\n		<p>Znane \"selfie\" aktorów i prowadzącej galę <u>Ellen DeGeneres</u> w <i>2014</i> roku za sprawą Twittera zobaczyło miliony ludzi na całym świecie. To był najbardziej rozpowszechniany tweet na świecie.</p>\r\n		<br>\r\n		<h2>Najstarszy laureat</h2>\r\n		<img class=\"statue1\" src=\"./images/old.jpeg\">\r\n		<p>Najstarszym laureatem <span style=\"color:gold\">Oscara</span> jest 88-letni <u>Christopher Plummer</u>. Aktor, który w <i>2018</i> roku zdobył nominację dla najlepszego aktora drugoplanowego za „Wszystkie pieniądze świata”, w wieku 82 lat zgarnął statuetkę w tej samej kategorii za „Debiutantów” <u>Mikea Millsa</u>. Wcześniej, bo w <i>2010</i> roku był nominowany do nagrody za występ w filmie „Ostatnia stacja”.</p>\r\n		<br>\r\n		<br>\r\n		<h2>Rekordzista Oscarowy</h2>\r\n		<img class=\"statue2\" src=\"./images/walt.jpg\">\r\n		<p>Pojedynczą osobą, która zdobyła najwięcej statuetek, jest <u>Walt Disney</u>, którego filmy na 59 nominacji zdobyły łącznie 26 nagród <span style=\"color:gold\">(w tym 4 Oscary honorowe)</span>. Disney dzierży też rekord największej ilości statuetek zdobytych z rzędu: przez kolejne 8 lat <i>(od 1931 do 1939 roku)</i> zdobywał nagrody w każdym kolejnym roku – łącznie 10 w tym okresie.</p>\r\n	</div>', 1),
(5, 'kontakt', '\r\n	<div class=\"title\">\r\n		<h1>Kontakt</h1>\r\n	</div>\r\n	<p style=\"text-align:center;\">Skontaktuj się ze mną aby zgłośić błąd lub zapytanie.</p>\r\n	<div class=\"kontakt\">\r\n		<form action=\"mailto:164400@student.uwm.edu.pl\" method=\"post\" enctype=\"text/plain\">\r\n			<label for=\"imie\">Imie</label><br>\r\n			<input type=\"text\" id=\"imie\" name=\"imie\"><br>\r\n			\r\n			<label for=\"email\">Email</label><br>\r\n			<input type=\"text\" id=\"email\" name=\"email\"><br>\r\n			\r\n			<label for=\"msg\">Wiadomość</label><br>\r\n			<input type=\"text\" size=25 id=\"msg\" name=\"msg\"><br>\r\n			<input type=\"submit\" value=\"Wyslij\">\r\n		</form>\r\n	<div>', 1),
(6, 'filmy', '<div class=\"title\">\r\n	<h1>Will Smith policzkuje Chris Rocka</h1>\r\n	<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/myjEoDypUD8?si=VwoJVS0XGQFu2ovZ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>\r\n	<br>\r\n	<h1>Leonardo Dicaprio wygrywa upragnionego Oscara</h1>\r\n	<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xpyrefzvTpI?si=FjE7UXzgL41UBx73\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>\r\n	<br>\r\n</div>', 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `page_list`
--
ALTER TABLE `page_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `page_list`
--
ALTER TABLE `page_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
