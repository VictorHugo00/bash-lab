# INCOMPLETO!

#!/bin/bash

while true; do

echo "--------------------------"
echo "| ORGANIZADOR DE ARQUIVO |"
echo "--------------------------"

read -p "QUAL O CAMINHO DA PASTA A SER ORGANIZADA: " opc

if ls -la $opc; then
    for arq in "$opc"/*; do
    mkdir $arq


else
    echo "A PASTA NÃO EXISTE"