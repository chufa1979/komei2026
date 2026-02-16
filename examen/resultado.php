<?php
$ashoden = array("Mae", "Migi", "Hidari", "Ushiro", "Yaegaki", "Ukenagashi", "Kaishaku", "Tsukekomi", "Tsukikage", "Oikaze", "Nukiuchi");
$achuden = array("Yokogumo", "Toraisoku", "Inazuma", "Ukigumo", "Oroshi", "Iwanami", "Urokogaeshi", "Namigaeshi", "Takiotoshi", "Makko");
$aokudent = array("Yukizure", "Tsuretachi", "Somakuri", "Sodome I", "Sodome II", "Sodome III - Sautome", "Shinobu I" , "Shinobu II", "Yukichigai I", "Yukichigai II", "Sodesurigaeshi I", "Sodesurigaeshi II", "Sodesurigaeshi III", "Moniri", "Kabezoi I" , "Kabezoi II", "Ukenagashi" , "Ukenagashi OKUDEN");
$aitomagoi = array("Itomagoi I", "Itomagoi II", "Itomagoi III");
$achudeni = array("Kasumi", "Sunegakoi", "Tozume", "Towaki", "Shihogiri", "Tanashita", "Ryozume", "Torabashiri");
$abangai = array("Hayanami", "Raiden", "Jinrai");
$atoryubangai = array("Mae Toryu-Bangai", "Aranami", "Kesaguruma", "Takiguruma", "Tatsumaki");
$akumitachis  = array("Deai (Shitachi)", "Kobushidori Nanhon Me no Kata (Shitachi)", "Zetsumioken (Shitachi)", "Dokumioken (Shitachi)", "Tsubadome (Shitachi)", "Ukenagashi (Shitachi)", "Mappo (Shitachi)");
$akumitachiu  = array("Deai (Uchitachi)", "Kobushidori Nanhon Me no Kata (Uchitachi)", "Zetsumioken (Uchitachi)", "Dokumioken (Uchitachi)", "Tsubadome (Uchitachi)", "Ukenagashi (Uchitachi)", "Mappo (Uchitachi)");
$atsumeiais  = array("Hasso (Shitachi)", "Kobushidori Tsume-Iai (Shitachi)", "Iwanami (Shitachi)", "Yaegaki (Shitachi)", "Urokogaeshi (Shitachi)", "Kuraiyurumi (Shitachi)", "Tsubamegaeshi (Shitachi)", "Gansekiotoshi (Shitachi)", "Suigetsuto (Shitachi)", "Kasumiken (Shitachi)", "Uchikomi (Shitachi)");
$atsumeiaiu  = array("Hasso (Uchitachi)", "Kobushidori Tsume-Iai (Uchitachi)", "Iwanami (Uchitachi)", "Yaegaki (Uchitachi)", "Urokogaeshi (Uchitachi)", "Kuraiyurumi (Uchitachi)", "Tsubamegaeshi (Uchitachi)", "Gansekiotoshi (Uchitachi)", "Suigetsuto (Uchitachi)", "Kasumiken (Uchitachi)", "Uchikomi (Uchitachi)");
$ahayanuki  = array("Chuden no Hayanuki Iwaza", "Chuden no Hayanuki Tachiwaza");
$ahayanukidori  = array("Chuden no Hayanuki Katadori Iwaza", "Chuden no Hayanuki Katadori Tachiwaza");
$ahayanukatate  = array("Chuden no Hayanuki Katate Iwaza", "Chuden no Hayanuki Katate Tachiwaza");
$aran  = array("Ran");
$atoho  = array("Maegiri (Eishin Ryu)", "Zengogiri (Mugai Ryu)", "Kiriage (Shindo Munen Ryu)", "Shihogiri (Suio Ryu)", "Kissakigaeshi (Hoki Ryu)");

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
if ($shoden==1) { $examen = array_merge($examen, $ashoden); }
if ($okudeni==1) { $examen = array_merge($examen, $achudeni);  }
if ($okudent==1) { $examen = array_merge($examen, $aokudent);  }
if ($bangai==1) { $examen = array_merge($examen, $abangai);  }
if ($itomagoi==1) { $examen = array_merge($examen, $aitomagoi);  }
if ($toryu==1) { $examen = array_merge($examen, $atoryubangai);  }
if ($kumitachi==1) { $examen = array_merge($examen, $akumitachis);  }
if ($kumitachi2==1) { $examen = array_merge($examen, $akumitachiu);  }
if ($tsume==1) { $examen = array_merge($examen, $atsumeiais);  }
if ($tsume2==1) { $examen = array_merge($examen, $atsumeiaiu);  }
if ($hayanuki==1) { $examen = array_merge($examen, $ahayanuki);  }
if ($hayanukidori==1) { $examen = array_merge($examen, $ahayanukidori);  }
if ($hayanukikatate==1) { $examen = array_merge($examen, $ahayanukatate);  }
if ($ran==1) { $examen = array_merge($examen, $aran);  }
if ($toho==1) { $examen = array_merge($examen, $atoho); }
if ($chuden==1) { $examen = array_merge($examen, $achuden); }
//var_dump($examen);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Kata | Muso Jikiden Eishin Ryu Komei Juku</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container">
        <!-- Content here -->
        <div class="container-fluid">
            <img src="images/isshin-800.5a912465.png" class="mx-auto d-block w-50 p-3 mt-2" alt="Responsive image">
          
         Usted deberá hacer los siguientes KATAS:
         <br>
         <?php
         shuffle($examen); 
         if (count($examen)>=5) {
            $claves_aleatorias = array_rand($examen, 5);
            echo "Kata 1: <strong>". $examen[$claves_aleatorias[0]]."</strong><br>";
            //$numero_aleatorio = rand(0,count($examen));
            echo "Kata 2: <strong>". $examen[$claves_aleatorias[1]]."</strong><br>";
            //$numero_aleatorio = rand(0,count($examen));
            echo "Kata 3: <strong>". $examen[$claves_aleatorias[2]]."</strong><br>";
            //$numero_aleatorio = rand(0,count($examen));
            echo "Kata 4: <strong>". $examen[$claves_aleatorias[3]]."</strong><br>";
            //$numero_aleatorio = rand(0,count($examen));
            echo "Kata 5: <strong>". $examen[$claves_aleatorias[4]]."</strong><br><br>";

            ///var_dump($examen);
        } else {
            echo "<strong>Debe seleccionar más grupos de Katas para que se seleccionen!</strong>"."<br><br>";
        }
         ?>

<button type="submit" class="btn btn-primary" onclick="window.location='http://www.komeijuku.com.ar/examen/';">Volver</button>
        </div>
      </div>
</body>
</html>