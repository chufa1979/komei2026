<?php
$ashoden = array("Mae", "Migi", "Hidari", "Ushiro", "Yaegaki", "Ukenagashi", "Kaishaku", "Tsukekomi", "Tsukikage", "Oikaze", "Nukiuchi");
$achuden = array("Yokogumo", "Toraisoku", "Inazuma", "Ukigumo", "Oroshi", "Iwanami", "Urokogaeshi", "Namigaeshi", "Takiotoshi", "Makko");
$aokudent = array("Yukizure", "Tsuretachi", "Somakuri", "Sodome I", "Sodome II", "Sodome III - Sautome", "Shinobu I" , "Shinobu II", "Yukichigai I", "Yukichigai II", "Sodesurigaeshi I", "Sodesurigaeshi II", "Sodesurigaeshi III", "Moniri", "Kabezoi I" , "Kabezoi II", "Ukenagashi" , "Ukenagashi OKUDEN");
$achudeni = array("Kasumi", "Sunegakoi", "Tozume", "Towaki", "Shihogiri", "Tanashita", "Ryozume", "Torabashiri");
$abangai = array("Hayanami", "Raiden", "Jinrai");
$atoryubangai = array("Mae", "Aranami", "Kesaguruma", "Takiguruma", "Tatsumaki");
$akumitachis  = array("Deai (Shitachi)", "Kobushidori (Shitachi)", "Zetsumioken (Shitachi)", "Dokumioken (Shitachi)", "Tsubadome (Shitachi)", "Ukenagashi (Shitachi)", "Mappo (Shitachi)");
$akumitachiu  = array("Deai (Uchitachi)", "Kobushidori (Uchitachi)", "Zetsumioken (Uchitachi)", "Dokumioken (Uchitachi)", "Tsubadome (Uchitachi)", "Ukenagashi (Uchitachi)", "Mappo (Uchitachi)");
$atsumeiais  = array("Hasso (Shitachi)", "Kobushidori (Shitachi)", "Iwanami (Shitachi)", "Yaegaki (Shitachi)", "Urokogaeshi (Shitachi)", "Kuraiyurumi (Shitachi)", "Tsubamegaeshi (Shitachi)", "Gansekiotoshi (Shitachi)", "Suigetsuto (Shitachi)", "Kasumiken (Shitachi)", "Uchikomi (Shitachi)");
$atsumeiaiu  = array("Hasso (Uchitachi)", "Kobushidori (Uchitachi)", "Iwanami (Uchitachi)", "Yaegaki (Uchitachi)", "Urokogaeshi (Uchitachi)", "Kuraiyurumi (Uchitachi)", "Tsubamegaeshi (Uchitachi)", "Gansekiotoshi (Uchitachi)", "Suigetsuto (Uchitachi)", "Kasumiken (Uchitachi)", "Uchikomi (Uchitachi)");
$ahayanuki  = array("Chuden no Hayanuki Iwaza", "Chuden no Hayanuki Tachiwaza");
$ahayanukidori  = array("Chuden no Hayanuki Katadori Iwaza", "Chuden no Hayanuki Katadori Tachiwaza");
$ahayanukatate  = array("Chuden no Hayanuki Katate Iwaza", "Chuden no Hayanuki Katate Tachiwaza");
$aran  = array("Ran");
$atoho  = array("Toho");

$shoden = $_POST["shoden"];
$chuden = $_POST["chuden"];
$okudeni = $_POST["okudeni"];
$okudent = $_POST["okudent"];
$itomagoi = $_POST["itomagoi"];
$bangai = $_POST["bangai"];
$toryu = $_POST["toryu"];
$kumitachi = $_POST["kumitachi"];
$kumitachi2 = $_POST["kumitachi2"];
$tsume = $_POST["tsume"];
$tsume2 = $_POST["tsume2"];
$hayanuki = $_POST["hayanuki"];
$hayanukidori = $_POST["hayanukidori"];
$hayanukikatate = $_POST["hayanukikatate"];
$ran = $_POST["ran"];
$toho = $_POST["toho"];

$examen = array();
if ($shoden==1) { array_push($examen,$ashoden); }
if ($chuden==1) { array_push($examen,$achuden); }
if ($okudeni==1) { array_push($examen,$achudeni); }
if ($aokudent==1) { array_push($examen,$aokudent); }
if ($bangai==1) { array_push($examen,$abangai); }
if ($toryu==1) { array_push($examen,$atoryubangai); }
if ($kumitachi==1) { array_push($examen,$akumitachis); }
if ($kumitachi2==1) { array_push($examen,$akumitachiu); }
if ($tsume==1) { array_push($examen,$atsumeiais); }
if ($tsume2==1) { array_push($examen,$atsumeiaiu); }
if ($hayanuki==1) { array_push($examen,$ahayanuki); }
if ($hayanukidori==1) { array_push($examen,$ahayanukidori); }
if ($hayanukikatate==1) { array_push($examen,$ahayanukatate); }
if ($ran==1) { array_push($examen,$aran); }
if ($toho==1) { array_push($examen,$atoho); }


///var_dump($examen);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container">
        <!-- Content here -->
        <div class="container-fluid">
            <img src="images/isshin-800.5a912465.png" class="mx-auto d-block w-50 p-3 mt-2" alt="Responsive image">
          
         Usted deberá hacer los siguientes KATAS:
         <?php
            $seleccion = array_rand($examen,5);
            echo "Kata 1: ". $seleccion[0]."<br>";
            echo "Kata 2: ". $seleccion[1]."<br>";
            echo "Kata 3: ". $seleccion[2]."<br>";
            echo "Kata 4: ". $seleccion[3]."<br>";
            echo "Kata 5: ". $seleccion[4]."<br>";
         ?>


        </div>
      </div>
</body>
</html>