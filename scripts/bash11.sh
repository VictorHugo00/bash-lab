#!/bin/bash

while true; do

echo "-----------------"
echo "| MONITORAMENTO |"
echo "-----------------"

echo "DESCRIÇÃO"
echo "MONITORA PASTA E MOSTA AS MUDANÇAS"
echo "OBS: PASSAR O CAMINHO DA PASTA!"

echo "(1) MONITORAMENTO"
echo "(2) COMPARA LOGS"
echo "(3) SAIR"

read -p "O QUE FAZER: " opc1

if [ -d "$opc1" && "$opc1" -eq 1 ]; then
    read -p "NOME PARA O LOG: " name1
    stat -c "%n | %s KB | %y" $opc1 > /home/$USER/log_$name1.txt
    echo "LOG FEITO!"
    echo "FAZER UM SCAN NOVO?"
    read "YES or NO: " opc2

elif [ "$opc2" == "YES" ]; then
    read -p "NOME PARA NOVO LOGO: " name2
    stat -c "%n | %s KB | %y" $opc1 > /home/$USER/log_$name2.txt
    echo "LOG FEITO!"

elif [ "$opc3" -eq 2 ]; then
    echo "QUAIS LOGS COMPARAR?, OBS: PASSAR CAMINHO!"
    read -p "LOG1: " log1
    read -p "LOG2: " log2
    comm -13 <(sort log_$log1.txt) <(sort log_$log2.txt)
    echo "COMPARAÇÃO DOS LOGS: $log1 É $log2 !"

elif [ "$opc1" -eq 3 ]; then
    echo "SAINDO!"
    exit
fi

    
