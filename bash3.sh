#!/bin/bash

read -p "Qual extensão de arquivo você quer buscar: " ext
read -p "Em qual pasta busca OBS:'Passar caminho': " pas

if find "$pas" -type f -name "*.$ext" > "$out"; then
    echo "Foi encontrado esses arquivos: "
    cat "$out"
else
    echo "Não achei nada :<"

total=$(wc -l < "$out")
    echo "Encontrei esse tanto de arquivo: $total!"
