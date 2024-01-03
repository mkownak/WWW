-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sty 03, 2024 at 10:40 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moja_strona`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `id` int(11) NOT NULL,
  `matka` int(11) NOT NULL DEFAULT 0,
  `nazwa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategorie`
--

INSERT INTO `kategorie` (`id`, `matka`, `nazwa`) VALUES
(1, 0, 'dom'),
(2, 1, 'meble'),
(3, 0, 'ogród'),
(4, 3, 'narzędzia'),
(5, 3, 'wyposażenie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `page_list`
--

CREATE TABLE `page_list` (
  `id` int(11) NOT NULL,
  `page_title` varchar(255) NOT NULL,
  `page_content` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `page_list`
--

INSERT INTO `page_list` (`id`, `page_title`, `page_content`, `status`) VALUES
(1, 'oscar', '	<div class=\"opis\">\r\n		<h1 class=\"title\">Czym jest Oscar?</h1>\r\n		<p><b>Oscar</b>, znany też jako <b>Nagroda Akademii Filmowej</b> – nagroda filmowa przyznawana corocznie przez Amerykańską Akademię Sztuki i Wiedzy Filmowej. Pierwsze rozdanie odbyło się w 1929. Nagradzane są wstępnie nominowane filmy, które w poprzedzającym roku kalendarzowym były wyświetlane w amerykańskich kinach. Uroczystość wręczenia Oscarów odbywa się zwykle wczesną wiosną. Oscary, z wyłączeniem jednej kategorii, przyznawane są przeważnie filmom anglojęzycznym. Ceremonia rozdania Oscarów od 2002 roku odbywa się w Teatrze Dolby w Hollywood.\r\n		<h2>Historia</h2>\r\n		<p>Nagrody Akademii Filmowej ufundowano w tym samym roku <i>(1927)</i>, co samą Akademię, skupiającą amerykańskich filmowców. <span style=\"color:red\">Pierwsze nagrody zostały zaprezentowane w 1929 roku w Hollywood Roosevelt Hotel przy udziale 250 osób, ówczesna gala trwała zaledwie 15 minut.</span> Ceremonię poprowadził aktor Douglas Fairbanks, który ogłosił 12 zwycięzców w różnych kategoriach. Początkowo Oscary budziły umiarkowane zainteresowanie, a przedstawiciele mediów opuścili pierwszą galę jeszcze przed jej zakończeniem. Do zwiększenia popularności nagród przyczyniły się media, radio, a następnie telewizja\r\n		<h2>Statuetka</h2>\r\n		<p>Nagrodą jest statuetka rycerza opierającego się na dwuręcznym mieczu, stojącego na rolce filmu posiadającej pięć szprych, z której każda symbolizuje jedną z grup zawodowych reprezentowanych w Akademii: aktorów, scenarzystów, reżyserów, producentów i techników. Statuetka waży ok. 3,9 kg (8,5 funta) i ma ok. 35 cm (13,5 cala) wysokości. Wykonana jest z tzw. <u>„britannium”</u>, czyli stopu cyny (93%), antymonu (5%) i miedzi (2%), pokrytego 24-karatowym złotem. Statuetkę zaprojektował <b>Cedric Gibbons</b> w 1928 r. (według legendy pierwszy szkic wykonał na serwetce podczas bankietu), a jej odlew wykonał rzeźbiarz <b>George Stanley.</b> W latach 1942, 1943 i 1944 statuetki zamiast z metalu wykonano z gipsu. Było to wyrazem troski Akademii Filmowej o losy wojny. Statuetki gipsowe wymieniono laureatom na metalowe w 1946.</p>\r\n		<h2>Kategorie, oraz wybrane podkategorie</h2>\r\n		<p>W 1929 roku po raz pierwszy Nagrody Akademii przyznano w 13 kategoriach. Oscary są przyznawane w 24 kategoriach (w każdej z nich ogłasza się od 2 do 5 nominacji, oprócz kategorii „Najlepszy film” w której od 2009 roku nominuje się 10 filmów):</p>\r\n		<h3>Produkcja</h3>\r\n			<ul>\r\n			  <li>Najlepszy film</li>\r\n			  <li>Najlepszy reżyser</li>\r\n			  <li>Najlepszy scenariusz oryginalny</li>\r\n			  <li>Najlepszy adaptowany</li>\r\n			</ul>\r\n		<h3>Aktorskie</h3>\r\n			<ul>\r\n			  <li>Najlepszy aktor</li>\r\n			  <li>Najlepszy aktroka</li>\r\n			  <li>Najlepszy aktor drugoplanowy</li>\r\n			  <li>Najlepszy aktorka drugoplanowa</li>\r\n			</ul>\r\n		<h3>Wizualne</h3>\r\n			<ul>\r\n			  <li>Najlepsza scenografia i dekoracja wnętrz</li>\r\n			  <li>Najlepsze zdjęcia</li>\r\n			  <li>Najlepszy montaż</li>\r\n			</ul>\r\n		<p>inne kategorie to:<i> dźwięk i efekty specjalne, muzyczne, kostiumy i charakteryzacja, animacje, dokumentalne, okolicznosciowe.</i></p>\r\n	</div>\r\n	<div class=\"wiki\">\r\n		<a href=\"https://pl.wikipedia.org/wiki/Nagroda_Akademii_Filmowej\">powyższe inforamcje zaczerpnięte z strony wikipedia.org</a>\r\n	</div>', 1),
(2, 'galeria', '<div class=\"title\">\r\n		<h1>Galeria</h1>\r\n	</div>\r\n	<p>tutaj przedstawię filmy nagrodzone Oscarem za najlepszy film po roku 2000<p>\r\n	<table class=\"movies\">\r\n		<tr class=\"column-name\">\r\n		  <th>Tytuł</th>\r\n		  <th>Plakat</th>\r\n		  <th>Reżyser</th>\r\n		  <th>Opis</th>\r\n		  <th>Czy polecam?</th>\r\n		</tr>\r\n		<tr>\r\n		  <td>Gladiator (2000)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/gladiator.jpg\"></td>\r\n		  <td>Ridley Scott</td>\r\n		  <td>Epicka opowieść o odwadze i zemście osadzona w realiach Cesarstwa Rzymskiego roku 180 n.e.</td>\r\n		  <td class=\"ocena-p\">TAK</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>Za wszelką cenę (2004)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/baby.jpg\"></td>\r\n		  <td>Clint Eastwood</td>\r\n		  <td>Trener boksu Frankie zostaje poproszony przez Maggie o trenowanie jej. Mężczyzna niechętnie bierze 32-latkę pod swoje skrzydła, ale wraz z tą decyzją ich życie całkowicie się zmienia.</td>\r\n		  <td class=\"ocena-p\">TAK</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>To nie jest kraj dla starych ludzi (2007)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/men.jpg\"></td>\r\n		  <td>Joel Coen, Ethan Coen</td>\r\n		  <td>Opowiada historię teksańskiego robotnika, Llewelyna Mossa (Josh Brolin), który przypadkowo znajduje na pustyni kilka samochodów wraz ze zwłokami meksykańskich handlarzy narkotyków. Przy jednym z trupów bohater odkrywa walizkę z dwoma milionami dolarów.</td>\r\n		  <td class=\"ocena-p\">TAK</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>Slumdog. Milioner z ulicy (2008)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/slum.jpg\"></td>\r\n		  <td>Danny Boyle</td>\r\n		  <td>Jamal Malik (Dev Patel) to biedny chłopak ze slumsów. Postanawia wziąć udział w indyjskiej edycji \"Milionerów\", aby poprzez występ w programie odnaleźć swoją dawną miłość. Błyskawicznie odpowiada na pytania i pnie się coraz wyżej, co wzbudza podejrzenia prowadzącego.</td>\r\n		  <td class=\"ocena-n\">NIE</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>Incepcja (2010)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/incepcja.jpeg\"></td>\r\n		  <td>Christopher Nolan</td>\r\n		  <td>Film opowiada o możliwościach ingerowania w ludzki umysł dzięki zaawansowanej technologii umożliwiającej wpływ na marzenia senne. Głównym bohaterem filmu jest Cobb (Leonardo DiCaprio), szef zespołu specjalizującego się w dokonywaniu włamań do snów innych osób.</td>\r\n		  <td class=\"ocena-p\">TAK</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>Czarny łabędź (2010)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/czarny.jpg\"></td>\r\n		  <td>Darren Aronofsky</td>\r\n		  <td>Thriller psychologiczny rozgrywający się w środowisku nowojorskich tancerzy klasycznych. Natalie Portman wciela się w Ninę – baletnicę, która zaczyna rywalizować z nową członkinią zespołu tanecznego, Lily. Wrażliwa Nina kocha taniec, który jest całym jej życiem.</td>\r\n		  <td class=\"ocena-n\">NIE</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>Django (2012)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/django.jpg\"></td>\r\n		  <td>Quentin Tarantino</td>\r\n		  <td>Bohaterem Django jest tytułowy czarnoskóry niewolnik (Jamie Foxx), który po wyzwoleniu przez niemieckiego łowcę głów (Christoph Waltz) przemierza z nim południe Stanów Zjednoczonych w poszukiwaniu wyjętych spod prawa, a później – w celu odnalezienia żony Django.</td>\r\n		  <td class=\"ocena-p\">TAK</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>Mad Max: Na drodze gniewu (2015)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/max.jpg\"></td>\r\n		  <td>George Miller</td>\r\n		  <td>Prześladowany przez demony przeszłości Mad Max uważa, że najlepszym sposobem na przeżycie jest samotna wędrówka po świecie. Zostaje jednak wciągnięty do grupy uciekinierów przemierzających tereny spustoszone przez wojnę nuklearną (Wasteland) w pojeździe zwanym War Rig, prowadzonym przez Imperatorkę Furiosę.</td>\r\n		  <td class=\"ocena-p\">TAK</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>Uciekaj! (2017)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/run.jpg\"></td>\r\n		  <td>Jordan Peele</td>\r\n		  <td>Film opowiada historię czarnoskórego fotografa o imieniu Chris (w tej roli Daniel Kaluuya), który wybrał się ze swoją białą dziewczyną Rose (Allison Williams) w jej rodzinne strony. Tam poznaje bliskich ukochanej i odkrywa o nich przerażającą prawdę.</td>\r\n		  <td class=\"ocena-p\">TAK</td>\r\n		</tr>\r\n		<tr>\r\n		  <td>Top Gun: Maverick (2022)</td>\r\n		  <td><img class=\"plakat\" src=\"./images/top.jpg\"></td>\r\n		  <td>Joseph Kosinski</td>\r\n		  <td>Po 30. latach kapitan Pete „Maverick\" Mitchell (Tom Cruise) staje na czele legendarnej szkoły pilotów Top Gun. Jego zadaniem jest wyszkolenie grupy pilotów do wyjątkowo trudnej misji. Aby to zadanie zostało zwieńczone sukcesem z bandy indywidualistów musi stworzyć zgrany zespół.</td>\r\n		  <td class=\"ocena-p\">TAK</td>\r\n		</tr>	\r\n	</table>\r\n', 1),
(3, 'glowna', '<img class=\"statue1\" src=\"images/oskar.png\">\r\n<img class=\"statue2\" src=\"images/oskar.png\">\r\n<p class=\"opis\">Witaj na stronie poświęconej filmom oscarowych, a szczególnie tym, które zostały nagrodzone po roku 2000. Sama ceremonia wręczenia nagrody przyciąga uwagę wielu filmowych entuzjastów na całym świecie przed telewizory. Na tej stronie przedstawię trochę historii o tej nagrodzie oraz wybiorę parę filmów, które bym polecił lub też nie.</p>', 1),
(4, 'funoscar', '\r\n	<div class=\"title\">\r\n		<h1>Fun Facts o nagrodzie Oscara</h1>\r\n	</div>\r\n	<div class=\"opis\">\r\n		<h2>Przemowy</h2>\r\n		<img  class=\"statue1\" src=\"./images/leo.jpg\">\r\n		<p>Niektóre ekstremalnie krótkie, inne - niemiłosiernie się dłużące. Od pewnego czasu Akademia Filmowa wprowadziła <b>45-sekundowy limit</b> na przemowy i podziękowania, w którym muszą zmieścić się laureaci. Wcześniej nagminnie zdarzało się przynudzanie (Greer Garson za rolę w \"Pani Miniver\" mówiła prawie 7 minut). Z kolei <u>Alfred Hitchcock i William Holden</u> podziękowali zdawkowym \"Thank you\", a <u>Gwyneth Paltrow</u> podziękowała jednej osobie w swojej przemowie aż... 23 razy</p>\r\n		<br>\r\n		<h2>Najsłynniejsze \"selfie\" na oscarowej gali</h2>\r\n		<img class=\"statue2\" src=\"./images/selfie.jfif\">\r\n		<p>Znane \"selfie\" aktorów i prowadzącej galę <u>Ellen DeGeneres</u> w <i>2014</i> roku za sprawą Twittera zobaczyło miliony ludzi na całym świecie. To był najbardziej rozpowszechniany tweet na świecie.</p>\r\n		<br>\r\n		<h2>Najstarszy laureat</h2>\r\n		<img class=\"statue1\" src=\"./images/old.jpeg\">\r\n		<p>Najstarszym laureatem <span style=\"color:gold\">Oscara</span> jest 88-letni <u>Christopher Plummer</u>. Aktor, który w <i>2018</i> roku zdobył nominację dla najlepszego aktora drugoplanowego za „Wszystkie pieniądze świata”, w wieku 82 lat zgarnął statuetkę w tej samej kategorii za „Debiutantów” <u>Mikea Millsa</u>. Wcześniej, bo w <i>2010</i> roku był nominowany do nagrody za występ w filmie „Ostatnia stacja”.</p>\r\n		<br>\r\n		<br>\r\n		<h2>Rekordzista Oscarowy</h2>\r\n		<img class=\"statue2\" src=\"./images/walt.jpg\">\r\n		<p>Pojedynczą osobą, która zdobyła najwięcej statuetek, jest <u>Walt Disney</u>, którego filmy na 59 nominacji zdobyły łącznie 26 nagród <span style=\"color:gold\">(w tym 4 Oscary honorowe)</span>. Disney dzierży też rekord największej ilości statuetek zdobytych z rzędu: przez kolejne 8 lat <i>(od 1931 do 1939 roku)</i> zdobywał nagrody w każdym kolejnym roku – łącznie 10 w tym okresie.</p>\r\n	</div>', 1),
(5, 'kontakt', '\r\n	<div class=\"title\">\r\n		<h1>Kontakt</h1>\r\n	</div>\r\n	<p style=\"text-align:center;\">Skontaktuj się ze mną aby zgłośić błąd lub zapytanie.</p>\r\n	<div class=\"kontakt\">\r\n		<form action=\"mailto:164400@student.uwm.edu.pl\" method=\"post\" enctype=\"text/plain\">\r\n			<label for=\"imie\">Imie</label><br>\r\n			<input type=\"text\" id=\"imie\" name=\"imie\"><br>\r\n			\r\n			<label for=\"email\">Email</label><br>\r\n			<input type=\"text\" id=\"email\" name=\"email\"><br>\r\n			\r\n			<label for=\"msg\">Wiadomość</label><br>\r\n			<input type=\"text\" size=25 id=\"msg\" name=\"msg\"><br>\r\n			<input type=\"submit\" value=\"Wyslij\">\r\n		</form>\r\n	<div>', 1),
(6, 'filmy', '<div class=\"title\">\r\n	<h1>Will Smith policzkuje Chris Rocka</h1>\r\n	<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/myjEoDypUD8?si=VwoJVS0XGQFu2ovZ\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>\r\n	<br>\r\n	<h1>Leonardo Dicaprio wygrywa upragnionego Oscara</h1>\r\n	<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xpyrefzvTpI?si=FjE7UXzgL41UBx73\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>\r\n	<br>\r\n</div>', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id` int(11) NOT NULL,
  `tytul` varchar(255) NOT NULL,
  `opis` varchar(1000) NOT NULL,
  `data_utworzenia` date NOT NULL DEFAULT current_timestamp(),
  `data_modyfikacji` datetime DEFAULT NULL,
  `data_wygasniecia` datetime NOT NULL,
  `cena_netto` float NOT NULL,
  `podatek_vat` float NOT NULL,
  `ilosc_dostepnych_sztuk` int(11) NOT NULL,
  `status_dostepnosci` tinyint(1) NOT NULL,
  `kategoria` varchar(255) NOT NULL,
  `gabaryt` varchar(255) NOT NULL,
  `zdjecie` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produkty`
--

INSERT INTO `produkty` (`id`, `tytul`, `opis`, `data_utworzenia`, `data_modyfikacji`, `data_wygasniecia`, `cena_netto`, `podatek_vat`, `ilosc_dostepnych_sztuk`, `status_dostepnosci`, `kategoria`, `gabaryt`, `zdjecie`) VALUES
(1, 'kosiara', 'Opis produktu', '2024-01-03', '2024-01-03 20:52:50', '2023-12-31 00:00:00', 99.99, 0.23, 50, 1, 'Elektronika', '20x10x5', 0xffd8ffe000104a46494600010100000100010000fffe003b43524541544f523a2067642d6a7065672076312e3020287573696e6720494a47204a50454720763830292c207175616c697479203d2037350affdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108012c019003012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f7fa28a2800a28a2800a28a280128a2968012968a280128a5a280128a5a280128a5a4a0028a5a4a0028a5a280128a296801314628a5a004c518a5a280131462968a004c518a5a280131462968a004c518a5a280131462968a004c518a5a280131462968a004c518a5a280131462968a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a004a5a4a5a0028a28a004a2968a004a2969280168a4a5a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a004a5a4a5a0028a28a0029a7af7a0f535e3bf12be2648b3c9e1af0d3992ee43e4cf7310c9563c6c8fd5bb13dbb64d0069f8dbe2ddae8d72da6e8822bcbee8f272638cf4c718dcdf43fe15c3dcf8bfe24972fe46b4b9e7e5d3c85fc3e4ad1f07f85a6f0c5f0b83a1cdabebc983b010b0593119da5cf0d26083c7dd15df0d23c61ad0cea7ac41a640dd60d3d32f8ff7cf20fd2a1ceda2573a6186e68f34e4a2bcf7fb95dfe479a5bfc4bf1d594223b9b0be9187fcb496c981fc7e5ab317c60f12f9a91c9a74bb9c8551e4e093e806daf481f0d741750676be9e6ef2c976fb8fbf06a397e18e80ea5449a805230545d3107f3a5cd53f97f1ff00805fb2c23ff978ff00f01ffed8e2af7e2378e2ca4372da05c476a89ba417162f81ea770c715e8be0bf175bf8c34117f0c622951bcb9a2ce76b0e7f239cd73b6df0eb4f92eafac64d4f558cc24140b75c189870718ec772ff00c06b81f86ba64da878a75ad0db52bcd364b42c47d91fcbde51f69dc31cf514b9aa7f2fe237430b6d2b7df17fe67d08a727a0a76067a5733e17b0bdb0b9d4a1b8d4e7be822956389a720b8f9016e7eadfa574c0e302b44ee8e4a908c65cb17cde628e94b480e452d32428a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a004a5a28a0028a28a00e7fc6fa83e97e0ad62f237292476afb1c75562300fe66b87f84fe04b6d3ecd7c4778a93dddd02d6a7af9711fe21fed37afa57a178934e5d5bc39a969ed1f982e2d9d02f5c92a718f70706b86f83fe2133682fe1cd45fc9d4f4c99a010ca70ec8092383d71c838ec0500777a38522f9c01f35dc992075c1007f2ad3acad01bccb29e43d4de5c03f84ac3fa56b0e94005145140193a90fb2ea563a82f4dff006697dd64200fc9c27e66bcca1d15fc2df1e05f3cf1c563abac922e4e373b001939efbf69fa30af51d6e37934c91a3567689a3982af56d8e1f03dce3f95715f12edb4df11785da5b4d4618b55d3a417364c5f636f1ced19e72c0607be0f6a00ec747c7da75618e45e9cff00dfb435aa3a5715f0d3c443c51a0dd6a86329249720483b1710c61b1ed906bb61d2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a28012968a2800a28a28013bd79178ac2f81fe2c699e2608174dd547d9af0e3846c05cfb7014ff00c05bd6bd7ab97f881e1b5f14f842fac1541b955f3adcfa48a323f3e9f43401a7a0157d30cb1b878e69e6951c74656918823d8822b56bcffe17f8cadf5ef0dda58dd5c28d5ad94c32c2e7e7709c6ec7d319f7cd77e3a5002d14525002d34819278cfd2968a00f28b3ba7f04fc5ebbd3a481e0d135e60f04847eefed047cdcf624923f115eae3a5721f12b418f5ef06de286d975683ed56d20ea8ea323f3e57f1f6ab1e03f132f89fc336f71230fb6c43caba5f471dff1ebf8d0075145251400b45251400b4514500145149400b451450014514500145252d0014514500145149400b451450014514500145251400b45145001451450014514500145145001451450014514500145145001451450015c6fc4cd6350d1bc1f712e94aff6d9e44b68d906590b9c640ee7b0f735d9531d55880c01039e47eb401f2c785eeadf44f1ee93756d35d01c79f1ccb8904d82af19fa9e41ff00687bd7d4d0ca934292c6c191d432b0e841ef5e69f11fc036f77a16a1aad982b7b6ee6f7118019ca839c9fa67eb8c56a7c2ef109d6bc2f00965579501c6d1818c9ca81db07b7f74ad00777494a3a525002d251450043730a5c412432728ea54f6e0f07f9d78b69017e16fc501a4c934a748d5d005799b386dc42b67be33b7db249ed5edf5c8fc44f06c5e32f0dbdb280b7f6e7cdb497babf71f4238fcbd2803ad5fba29d5c57c35f13c9e23f0c46977b9753b13f67bb46fbdb97a13f5efee0d7683a50014b494b400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514011c8aaeacac32a46083dc5786787e393c09f12357d1a3e6300dd5a2b1211e13f33a7e081b0473ba3039c915eea79af12f8d82cee5e0bfd3aef6eaba60297291921c40f81927d8b0fc1cd2ba2a30949da28eeaebe2a7842ca43149a997941f992289a4c1faa823f238ace9fe35f83e0eb3de37d203cfe64562fc32d0fc37e21f0940d36956136a36a70f25c5bac85f3dd81cfa15eb9f973c57a159685a000c91e85a6c12afde45b54fcfa722992712ff001ebc2887096fa9487d1624ff00e2a99ff0bdb4894e2df43d5e6fa46bfd09af4d8ac6d2103cbb5853d36c605580a00e05007960f8c37d37fc79f81b5a9f3d3e561fc90d37fe16778b67e60f873aa6de9f3b30e7fefd8af56a2803e7fb4f192685f13575792cdf4db6d4c2c5a8d9c85818a427efe1954e3807201eadcf35ef88eac8a41c83c822b8df897e0d87c5fe18b88a3893fb4edd7ccb494e010c39299f461c7a6707b579658fc50d56cb45d2b4f69de3bbd2e6682f5085612c6a46de71d786538a9949455d9b61e84b1151528e8df5e9b5cfa2074a7550d1b52b7d63498350b56668670594b0208e482083e841157e9a775732945c5b8c959a0a28a298828a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028ef45140051451400514514005145140051451400514514005145140051451400514514005145140119fbfcd788f8bfc3da8ebbf15eeacece378e3b8b75592660426df2c06c9ef91f2fd715ede7ef1e9c51d7151529a9a499d384c54b0d3738ae8d6be67cebf0f7529bc17f11aef45bf7f2d448d04880fcb8ea180fa60e7d057d053dbf9e43ab797327dd9076f6f71fe7dc796fc6df0f33e9767e26b44027d3e4093903ac2cc393eb86c7e0c6b6fc37f137c3d27866ce5d575782deed536491c8c4b92bd0f1ea307f1ab39aedeacededee4bb98665f2e703eef661ea2ad0e95c15f7c51f0448a14eb24ba9cab456f21653ec76ff00fafdf9154e3f8d3e1748d84d2dd48e87ef456ec038f5c3631f4a00f49a2bcbe6f8ebe1a407cab2d5653ff5ca303f57acf9fe3e69e8a4c1a1ddbe3fe7a4a89fcb3401ebe719af0bd7b4db1f02fc5c8aeaf6da39341d6dc3b0750562977024fe0df31f6635e9be0af19d978d74a6bcb68cc12c6fb25b7760cc87a839e3823daaa7c4ef0e45e23f03dea1045c59a9bbb7655c90c809c63dc647e340d36b63b0895123558c2840380a3029f5e61f07bc63278874a9f4db90c64b15411c8c7efa6318e79e08fd6bd3c74e2810b45145001494b45001451450014514500252d14500145145001494b450014514500145145002514b45001451450014514500145145001451450014514500145145001451450014514500145145001451450053d56cadf51d2eeeceed37dbcf0b4722faa9041af8dadc2bdbba83b8c2720faa9e86bec4d76e3ec9e1fd4ae3fe78dac927e484d7c6563308a556246d00a37bafb7bff88a00b8a48e28279a6978c9fdd12c9d8918a6bb11400e2db8e0546cdb987a2d20ce09efda820152475ef401d5fc3ff135c784f5a4d4d37b59b37957518fe34ff11d47e3eb5f535adcc37b690dcdbc8b2c32a09237078607906be43b78d468b191825e53bb9fa715ec7f05bc59e75a3f86ef24264857cdb4663cb21fbc9f81e7e87da8032b5db66f873f19ec7568018f49d5e4fde01d01738901fa121ebdd41046474ae3be24f85478b7c1b756910ff4d8479f68ddfcc5edf88c83f5f6a67c32f138f13784adde6622f6d42c17087ae40e0fe23f506803b5a28ed45001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001494b450014514500145145001451450073de3b7f2bc05e207cff00cc3e71f9a1af8d94e320f4e871f957d75f14676b6f869aec8bd4dbecfc1982ff005af90c123ad006bc72f9b6a8fd648ff76d9eff00dd351b12c6a2b493cb93e6c04906d6cf63d8fe9fa7bd74963a5da49102eaef229c302dd2b3a955535791dd81c056c74f928b49adeeff004dfee30e38e599c47146cef8ce1455c1a2df483fd485f76207ff005eb62e34d48192e2d1023c7c903b8f7ae86c342d5f56d3d2e6cf4f91d1b90cd800fd0935c15730e5578d92f33e86970ee1e92be2e76f4692fc753948f49985aac524d1ae0f2579c549a726ada3ea76fa85880b3db4bbe37de003f5ef82320d7650780bc4131532a456aa0eeccb2823df85cd69ea7e03b8b2d35aeadae45cba0dcf1aa6df97d54f73ede9f91e459c414adcc9b615b2fc9a2d415477bee9df7ef747aaf877c4363e23d396e6d5807c2f9d17431b100e0d799bddaf813e387948a62d2b5d552e0fdd12313cfd77e7f0635cef8775eb9f0deaf15e459311c2cd1e701d3ae3f0ea3d3f1aeb3e2a5845e24f0ec5aa69ae64992dc5d40ca3e63e5b805463be256e3d56bd6c35755159ee7919be54f0351386b096cff47e7d8f5f5fba3afe34b5cf784b5f4d6bc2fa7decec22b99215f3a27f9595c70d90791c835d00e95d078e2d14514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514526680386f8bf04d73f0db5282df996478115738dd999063f138ae03c4de04b2d4f43b2b755786f2d152c2ce6487e466191fbe3d94842db8ff00cf41f8eefc7dd626b2f0ad8594064537576199d780020c819ec77153f85713e0ef1cdaeb12456be22bf9a3bb8525ff0049924256e83ec52aca3fe5a6c0caa7dd7d6803cc6f6d6e74abeb8d3ef6329342ed13a920f2a482411d791fcab6346d44ae048795c039eebd8d7a97c41d0acf58d1ee2f2e67292e996d2ceb2c7185fdf3305f2c9eaebe6a4c7db72fad7864370f0f0a3e65fbbdb1ed59d582a91e57b9d780c64f075d56874dd775ff000773d2461d720f27bd76de09d564961fec8768f0a4bc61c67729fbca3dc1e47d4d79768b7334b67bd18300c54a16e84007afe35a82e953890188ff00b5c0fc0f7af071585534e9cb75f9ff00c31fa0d68d1ccf0ab5b5f55e4d7f5b1edcdab595a478bcbfb50e797c305cfe07fc2b0e5f18685640efb869f0c4a8405f00fb902bcba49a28d06f946df5cd67ddea369f649956452fb1b6f7cf06bcfa5955372d5b7b791e64b21c2e1e9ba956a3764fb2bfebb97f5bd6adf51d466b8d0e342b21dc5256ef8f4e31f99ad3d17c4163656d0adf69cd2dd81c9328d8bf4cd6178c7c0173e15b0b4d523bd596de72a8300aba315248f42300d72c9a94b80b7389147463dabeba9518518f2c51f1b5b135ab24aa49bb6c99ed10f8f2c91001616fec5a68f8aba3c6b1dc5bb0b4b9b783238084b60fbed3c57882b467e74f9bbed3fe27352a6a7730ff00ab444c7aed3fd2b4303d96dfc53aac2812df50bb691bd419233f52cdb87fc071f8d5cb6f889a959bba5cb81346bbda0b8030ebfde561c9fe63bd790e9bafdc477aaf777133407831a101471d7000ae82eeca0bcd377dacbba6cef8e507e653d473dfd3f1a00a969f173c4a660b7536e68b20e2664c73f5e6bdc3e19ebfab788bc3b2deeab098cf9e561254e193039cf7e735f3ddfe90a2d24be5b245bac069509230475e3fcf4af62f815a8dd5e685a94329cdb5bcea2007f872a7207e42803d6074a5a41d296800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a4a5a4a005a28a2800a6938eb4ea6b8c838a00824b948c726ab49a922ff10aa3a92c8a0919ae52eef258db926802f78e2c6d7c59e19bad2a62a1d8799049dd241f74e7b7bfb135f2b5cda5c69d7b2dadcc6629e17d8ebd307fa0f7afa29ef9cf735c9f897c391f89afece182dc1d41c93e6eeda046bd779c74e450073be1ef1cbea7610f863c412c1fd9f2322999c15dd8236abb0e42fcaa3774e39eb9167e266a3a45858c3a0d8d869df685c348f0d98b792dff00d87c310c4f5dc0f7f7ac1d53413a593e54f6f75688e51de0f9943f704f63807f235cf5f5a794e972640e8577a83d4e33c1fc40a00d1b2d5eebeda6d4471234f6c82211a08c17032b9181927e61f88a64b7f79280a2418c723767f415876f7ab14ad2cc92492246160224dbe530c60f43e9d2bbf8234fb3a11188ced1951d8fa5653a3193b9e961b33af87a4e941bb74d7ef397582f1b8db23f7dbe5f1ff8f631f5adbd23c396f7972d1324a249223e592e154498c8c9e78ebe99c7e35748029a6ea4b671244e51c0c020d52a493ba30a98ea95134f67df57f79a3e3cf165f6abe1db2d2f52b0582ea3956612c0e1a3601181f70727a57036f6935e165b78cb955c90bd71f4ae9cdd24e8f15e5b8b98d8eef99886538201041e3939fc2a9ff625a4515d5f5adfcb018e3f3228c76f980e49382319e993c74ab390e78092d9ca9565e7953daae29120cfdefad28f1186dd15e430dd45f74315f9947b1ed4d37d692ea73c9671086de490b47016ced52781f850038465b900d6be99a85c5830ca968fbafe1ffd7fd2b534ab4d3272ad287507aed1915afab5df85adac4c65dccc381b508fd48a00cfb5bf8a7b61bc866194627f880c8cfe23f9d65e8be2bf15f856673a6de4cb63e6636451ab20038cecfbb9c0f6fad6679972d6177a95a5b4874eb67559651d1198e067df38a8f4ff0011cde418a15640b80483f7beb401ecbe1df8f96570045abd8cde62e774d6e83ee8fe2299c8f7c13f4af5fd2f53b4d634d86fec6659ada75dc8ebd08af8bef6ef75c4332c6ab26fc648eb5f427c05b9b9b9f08df8948304778cb163b1c02dfa91401eb14503a5140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400504668a2802b5cdbaca84115c86b1a59196515dc75aa7776ab321c8a00f279e1647c1ed573c38908d46f6699d542431c619cf0373367f02547e55b1ac6965189038ae7174d6d461d574857092df59158d8ff000b29e0fe05c7eb4015bc41a4d8f867c012d925b068ee2f70eee33b0339da47fba36fe5ef5e6575671b69d28b88f7797c2e3b1e879af73d6349b7d57c2c74bd42fd523d88935c6e03e618e7db240eb5e21e228db4ef105f5af9a250849c8fe3c8ce7f5a5d2c1bdf4bff00c3dce7f5c96c974f8eda38944a0821947207f9c5749a74a6e34fb7766cc8d1293f5c0cd725a6d9c7aa6ac609a64817218876c06e40da3dce47e55dc0b45862deb260c7b4eddbd7b54d3872a71474e3714f15539e492b24b4fd481d48c9c55394967c30e055f6e001ef93552e62c9caf4ad37394a8ce074f7151eb8f2dbe81146e36f9b22fcd9ec79c7e9fa54eb1c85642b1191947dc1d4fd2abf8811eebc391cd1ab32453a87207ddc8207ea0d459a96acddce9ba51828fbdaddf75d17c8e54c6ae3217191d3d2b574df0bddea70996dc28452012e718359b1953e5aed07e62455f177325b32acccabd783d6a8c4ea3c3da3e9fa77892d34ed6116e4dd0640f9dca991c7fc0b7003f1aedbc2ff000cec27d3da7bd768bca959096f986d191d0e3938c9eb5e6da4d95e4b766e61cf9d0a2ca8ccb920e7e5c67dc57b268b797777e1bd15e797f7971779970a06479982303e82802de9be08f0ee9eb20b7fb45cc53323490b9dd0395cedcae3040c9c03ed5e15e20b3161e26d5d61b192dadbed4eb0a8460a573c11ec7a8afa8ee09392540cfafb579378df497d1efe5d6e6bb062bcf95e08a0124be581f33027a718f6e6803c8a3845d417331755fb3618867c6ee7a2f1d6be8cf80400f00ce76905afe43d3fd95af1d5f02dd6bd226a1a36ad6b7904aa5da4b81b0abff748c1fcebddfe1ee9c9e11f085b69b73751b4885de59376d4dcc73c67b01c7e1401e8145638f12e89e688bfb56d4bb0dc3128c63ebd2b56291258d648dd5d1b90ca720d003e8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a29280168a28a0028a28a002908cd2d140142facd678c8239ae0f5ab57d2e68f50542c2ddb74807531f46fc81cfbe07a57a5100f5acdd42c56746181c8c648cff009ea7f3a00f2f9748137847c4b610c8d3b5cc925e407392eac01001f623f9578aeaa76ea4db4e6486258fd8ed5038f6e2bd7f5df0b78974bf36dfc3f7e069f3647d9e5c6f8413c856c676fe22b98d3fe1dc8ae65d5240c77060911ce71cf27d28038eb2d2afb4a9adaf6e2d907daa0052500b053d79cf0a71e95a82e253fc795272735e81a96890ea16eb1c8aca539465e76f6c01deb88bdd325d3ef8dacac0f190c3b83c7f4a6213ef28a683e5b8603383dea4618208a3683c500411c9e4dc798157ef6719c7ebdab6565d0af6d8c3776ac8ce72ee727f973fa56634431d39aaecbb7186dadf5a00ced77c2d05a1fb5699771dc4583fbb0d875fc3bd605bdbcf246ea619011d4aaf6aebb6b631c1cfb53c0cafdd5cfe348652f0edf496315c31b76fde95550dc7ddcf3ff8f575d6fe2eb98f44b7b382d238cc1d2566ce4e49e071ce4f5e6b9b28c4f614e40d19c83934c46f4fe25f13dccab37f6bbaf73114403e8781ebd6b5f46d4fedf09b3ba8d96ea252d19672fb860060a4f23eee71f5ae4cdd3f01540353c572eb22e7e47eaac0f4340c9aea48fc17af8d422063d2ef832dc449d165505832fd7047e75e7da8eb5ab78b359cdc5d48c4b31862dd85887270067d05771e2cbe8f54f0bdcc122edb884ac8a4f46c100fe85abcb2047924f958ab75cff9fad203574dd76e2db64333ef87eef38257df3e9ed5eb5f0e3e21dce8ba95b69f7d306d26760a49e440c7a30f41ea3b039ed5e272a4969349165770254f15a7a75e6db6640cc2420ff2ff00f5fe5401f70290541072296b95f873aab6b3e01d1eea4cf98b0085c9ee5094cffe3b5d50e9400514514005145140051451400514514005145140051451400514514005145140051451400514514005252d1400514514005145140051451400534807ad3a92802a4f6492f500d664da1c6f9216b7b149b450072175a100385af33f1be8d35b5e437a10f93b446c47f09049fd738af7978958104562eaba3c3796cf1c91864618607a11401f3a6fc6148231c63d28660aa4b6428e4e3aff00faebaad7bc19716133359fef62ce7cb3c328f6f5ae72de12ba95b433465733c6aeac31f29600fe94c474f65f0e5efec15efaf678ae648c3b450e02c40f66eedf98af30bed3a3b6d4a655ba49a28a5640f82002879ebc835eff006fa56a5078d64d54dca9b09ed040f07a156c83f86e3f9d715aafc3499751d6b578ae6316531f3d6d9932c18724fea7eb9f6a43388b291ca79771229949f9723048abbb296fe0d3edd2394bf9b24607311c0ffebf7a7465648c32f39e78a621a235ef914a224f5cd595b72d1ee3f2827193eb4935bbc04075009e98a0084800714cda4fcd9fc29c4628dded40092e1c82466b83d7f4efecfbdf3231fb89791ec7b8aefa66569729f7703f95452f86e6f1245f648924ce722458f7053ee7b0ff003ed40cf38f22e66b59afb6168e375591c7f096ce3f91abda74664599802d93b727e9cd74abf08fc6ad7a6d62d303a3ff00cb6495446476c926bd77c19f046df4afb35c6b7731dd3272f6b1a7c9bbfda6cf23db1480ec7e17e9d3699f0f74a827003ba34a07a0762c3f422bb11d2991224512471a8545002aa8c003d053e800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a4a5a4a0028a28a0029aca187229d450073faae98264242f35c1eb3a1b490ca04637ed6d8c57255b1c11ef5eb4e81c608acbbbd352524eda00e16d6eefa7f1169f3da966d2eeec59a58d8e4452a9041cf6fbc47e159bf14af6fac7c1ed75a6cef1b25c21976774cf39fd3f5ad8b856f0aea3e4321161784b432303b22909c98c9e8376491ebf37b57336daadc697a5eaf61e23b36b8b47925962b90c194a31c84233907b700f51401e51be58a6950bef4dc4283cf03815d16837286193ce0063a0c62b36c74cb9d52f42db47ba49096c765cf39fa57a15af806346044d2ee23e60c075ef8e2803066bd578cc4885830c7cdd4550659090a43123819e6bd26d3c076a0e6412c9eccc40fc8574363e15b7b703cab68a3fa2d303c7edf45d4aed8086d2520f765c0fd6b76c7c077733037332c6be89963fae3fad7adc3a2228fbbc55e8f4d443f74520382d33c05a7c2c19a03330ef2f3fa7435d7d8e89140a004000ec06056ca5ba2f415285c500450c0b12e00ab03a51450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001494b49400b451450014514500145145001494b494005145140052d25140052100d2d140152fb4eb5d4ace5b3bc8566b79576c91b8c822b889fe11787e6b846927d49e18fee5b49765a351ed91903db35e854628039cb3f0ae9da7a2a5a5a4510031955193f535a31e991a7f08ad2c0a2802ba5ac6bd00a9446076a928a004c514b450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145149400b4514500145149400b45149400b494b494005145140052d252d0025145140052d252d001451450014514500145145001451450014514500145145001451450014514500145145001451477a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00292968a00292968a00292968a004a5a4a5a004a5a4a5a004a2969280168a29280168a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28ef400514514005145140051451401fffd9),
(3, 'xxx', 'ddd', '2024-01-03', '2024-01-03 22:39:35', '2023-12-31 00:00:00', 4, 5, 0, 0, 'ziomex', '233', ''),
(4, 'wrota', 'zeliwne', '2024-01-03', '2024-01-03 22:13:30', '2023-12-31 00:00:00', 2, 3, 0, 0, 'antyk', '2137', '');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `page_list`
--
ALTER TABLE `page_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `page_list`
--
ALTER TABLE `page_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
