<?php

// PRIMEIRO NÚMERO
$entrada1 = readline("Informe o primeiro numero: ");

while (!is_numeric($entrada1)) {
    echo "Erro: digite apenas numeros." . PHP_EOL;
    $entrada1 = readline("Informe o primeiro numero novamente: ");
}

$primeiro_numero = (float) $entrada1;


// SEGUNDO NÚMERO
$entrada2 = readline("Informe o segundo numero: ");

while (!is_numeric($entrada2)) {
    echo "Erro: digite apenas numeros." . PHP_EOL;
    $entrada2 = readline("Informe o segundo numero novamente: ");
}

$segundo_numero = (float) $entrada2;


echo PHP_EOL;

$operador = readline("Informe a operação desejada (+, -, *, /): ");

echo PHP_EOL;
echo "CALCULADORA" . PHP_EOL;
echo "------------------------" . PHP_EOL;


if ($operador == "+") {

    $resultado = $primeiro_numero + $segundo_numero;

    echo "O resultado da soma é: " . $resultado . PHP_EOL;


} elseif ($operador == "-") {

    $resultado = $primeiro_numero - $segundo_numero;

    echo "O resultado da subtração é: " . $resultado . PHP_EOL;


} elseif ($operador == "*") {

    $resultado = $primeiro_numero * $segundo_numero;

    echo "O resultado da multiplicação é: " . $resultado . PHP_EOL;


} elseif ($operador == "/") {

    // Impede divisão por zero
    while ($segundo_numero == 0) {

        echo "Erro: divisão por zero não é permitida." . PHP_EOL;

        $entrada2 = readline("Informe o segundo numero novamente: ");

        // também impede letras
        while (!is_numeric($entrada2)) {
            echo "Erro: digite apenas numeros." . PHP_EOL;
            $entrada2 = readline("Informe o segundo numero novamente: ");
        }

        $segundo_numero = (float) $entrada2;
    }

    $resultado = $primeiro_numero / $segundo_numero;

    echo "O resultado da divisão é: " . $resultado . PHP_EOL;


} else {

    echo "Operação inválida. Use +, -, * ou /." . PHP_EOL;
}


echo PHP_EOL;
echo "------------------------" . PHP_EOL;
echo "Obrigado por usar a calculadora!" . PHP_EOL;
echo "------------------------" . PHP_EOL;