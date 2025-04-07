#!/bin/bash

while true; do

echo "----------"
echo "| FILMES |"
echo "----------"

echo "OPÇOES"
echo "(1) PROCURAR FILME"
echo "(2) VER LISTA DE FILME"
echo "(3) ADICIONAR FILME"
echo "(4) REMOVER FILME"
echo "(5) SAIR"
read -p "SELECIONE UMA OPÇÃO: " opc

arq=$(/home/$USER/Documents/filmes.txt)

if [ "$opc" -eq 1 ]; then
    cat $opc | grep -i $arq
    echo "O FILME: $opc ESTA DISPONIVEL! "

elif [ "$opc" -eq 2 ]; then
    echo "FILMES DISPONIVEIS: "
    cat $arq

elif [ "$opc" -eq 3 ]; then
    read -p "QUAL FILME QUER ADICIONAR: " opc2
    echo $opc2 > $arq
    echo "O FILME: $opc2 FOI ADICIONADO!"

elif [ "$opc" -eq 4 ]; then
    read -p "QUAL FILME QUER REMOVER: " opc3
    sed -i 's/$opc3//g' $arq
    echo "O FILME: $opc3 FOI REMOVIDO!"

elif
    exit

else
    echo "OPÇÃO ERRADA! TENTE NOVAMENTE."

fi

