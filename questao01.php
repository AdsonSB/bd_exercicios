<?php
$numero = (int) readline("Informe um numero para a tabuada: ");
if (!is_numeric($numero) || $numero <= 0) {
    echo "Erro: digite apenas numeros e valores maior que 0." . PHP_EOL;
    $numero = (int) readline("Informe um numero para a tabuada novamente: ");
}
echo PHP_EOL;
echo "TABUADA DO " . $numero . " até 10". PHP_EOL;
echo "------------------------" . PHP_EOL;


// Repete de 1 até 10
for ($contador = 1; $contador <= 10; $contador++) {

    // Realiza a multiplicação
    $resultado = $numero * $contador;

    // Exibe a operação completa
    echo $numero
        . " x "
        . $contador
        . " = "
        . $resultado
        . PHP_EOL;
}

