<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <pre>
        <?php
            require_once 'ContaBanco.php';
        
            $p1 = new ContaBanco();
            $p2 = new ContaBanco();
            $p1->abriConta("CC");
            $p1->setNumConta(1111);
            $p1->setDono("Jubileu");
            $p2->abriConta("CP");
            $p2->setNumConta(2222);
            $p2->setDono("Creuza");

            $p1->depositar(300);
            $p2->depositar(500);

            $p2->sacar(1000);

            $p1->pagarMensal();
            $p2->pagarMensal();

            $p1->sacar($p1->getSaldo());//sacar todo o saldo
            $p2->sacar(630);

            $p1->fecharConta();
            $p2->fecharConta();

            print_r($p1);
            print_r($p2);

        ?>
    </pre>
    
</body>
</html>