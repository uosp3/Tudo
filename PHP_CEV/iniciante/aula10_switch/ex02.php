<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modelo</title>
    <link rel="stylesheet" href="../estilos/style.css">
</head>
<body>
    <h1>Assunto: </h1>
    <?php
       $d = isset($_GET["ds"]) ? $_GET["ds"] : 0; 
       switch ($d){
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                echo "Levanta e vai estudar! :)";
                break;
            
            case 7:
            case 8:
                echo "Descanse, pequeno gafanhoto! ;)";
                break;

            default:
                echo "Dia da semana inválido";
       }
    ?>
    <br>
    <a href="javascript:history.go(-1)">Votar</a>
    <img src="" alt="">
</body>
</html>