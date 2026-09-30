<?php

echo "------------------------" . PHP_EOL;
echo "COLHEITA DO VELHO INACIO" . PHP_EOL;
echo "------------------------" . PHP_EOL;

// Gera código da colheita
$protocolo = rand(1000, 9999);

// Data atual
$data = date("d/m/Y");

// Responsável
$nomeProdutor = readline("Informe o nome do responsavel pelo lançamento: ");

// Quantidade de culturas
$quantidadeCulturas = (int) readline("Informe quantas culturas serão registradas: ");

// Validação da quantidade de culturas
while ($quantidadeCulturas <= 0) {

    echo "Erro: A quantidade de culturas deve ser maior que zero." . PHP_EOL;

    $quantidadeCulturas = (int) readline(
        "Informe novamente quantas culturas serão registradas: "
    );
}


// Array para armazenar as culturas
$culturas = [];


// Acumuladores
$totalKg = 0;
$valorTotalColheita = 0;


// Cadastro das culturas
for ($contador = 1; $contador <= $quantidadeCulturas; $contador++) {

    echo PHP_EOL;
    echo "------------------------" . PHP_EOL;
    echo "CULTURA " . $contador . PHP_EOL;
    echo "------------------------" . PHP_EOL;

    $nomeProduto = readline("Informe o nome da cultura: ");
        // Validação do nome da cultura
    while (
        trim($nomeProduto) == "" ||
        !preg_match('/^[\p{L}\s]+$/u', $nomeProduto)
    ) {

        echo "Erro: Informe apenas letras no nome da cultura." . PHP_EOL;

        $nomeProduto = readline(
        "Informe novamente o nome da cultura: "
    );
    }

    $quantidadeProduzida = (int) readline(
        "Informe a quantidade produzida em quilogramas: "
    );
    // Validação da quantidade produzida como solicitado no enunciado, pra que não ser menor ou igual a zero.
    while ($quantidadeProduzida <= 0 || !is_numeric($quantidadeProduzida)) {

        echo "Erro: A quantidade produzida nao pode ser menor ou igual a zero." . PHP_EOL;

        $quantidadeProduzida = (int) readline(
            "Informe a quantidade produzida novamente: "
        );
    }

    $precoPorKg = (float) readline(
        "Informe o valor estimado de venda por kg: R$ "
    );
    // Validação do preço por kg como solicitado no enunciado, pra que não ser menor ou igual a zero.
    while ($precoPorKg <= 0 || !is_numeric($precoPorKg)) {

        echo "Erro: O valor por kg nao pode ser menor ou igual a zero." . PHP_EOL;

        $precoPorKg = (float) readline(
            "Informe o valor por kg novamente: R$ "
        );
    }


    // Calcula o valor estimado da produção
    $valorProducao = $quantidadeProduzida * $precoPorKg;


    // Armazena a cultura no array
    $cultura = [
        "nome" => $nomeProduto,
        "quantidade" => $quantidadeProduzida,
        "precoKg" => $precoPorKg,
        "valorProducao" => $valorProducao
    ];

    $culturas[] = $cultura;


    // Acumuladores gerais
    $totalKg = $totalKg + $quantidadeProduzida;

    $valorTotalColheita = $valorTotalColheita + $valorProducao;
}


// ==========================================
// RELATORIO FINAL
// ==========================================

echo PHP_EOL;
echo "==================================" . PHP_EOL;
echo "        RELATORIO DA COLHEITA      " . PHP_EOL;
echo "==================================" . PHP_EOL;

echo "Codigo da colheita: " . $protocolo . PHP_EOL;
echo "Data: " . $data . PHP_EOL;
echo "Responsavel: " . $nomeProdutor . PHP_EOL;

echo PHP_EOL;
echo "CULTURAS CADASTRADAS" . PHP_EOL;
echo "----------------------------------" . PHP_EOL;


// Percorre todas as culturas cadastradas
foreach ($culturas as $cultura) {

    echo "Nome: " . $cultura["nome"] . PHP_EOL;

    echo "Quantidade produzida: "
        . $cultura["quantidade"]
        . " kg"
        . PHP_EOL;

    echo "Valor por kg: R$ "
        . number_format($cultura["precoKg"], 2, ',', '.')
        . PHP_EOL;

    echo "Valor estimado da producao: R$ "
        . number_format($cultura["valorProducao"], 2, ',', '.')
        . PHP_EOL;

    echo "----------------------------------" . PHP_EOL;
}


// ==========================================
// RESUMO GERAL
// ==========================================

echo PHP_EOL;
echo "RESUMO GERAL" . PHP_EOL;
echo "----------------------------------" . PHP_EOL;

echo "Codigo da colheita: " . $protocolo . PHP_EOL;

echo "Data: " . $data . PHP_EOL;

echo "Responsavel: " . $nomeProdutor . PHP_EOL;

echo "Quantidade de culturas validadas: "
    . $quantidadeCulturas
    . PHP_EOL;

echo "Quantidade total produzida: "
    . $totalKg
    . " kg"
    . PHP_EOL;

echo "Valor total estimado da colheita: R$ "
    . number_format($valorTotalColheita, 2, ',', '.')
    . PHP_EOL;

echo "==================================" . PHP_EOL;

