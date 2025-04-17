#!/bin/bash

echo "-------------------------"
echo "|   SISTEMA DE BACKUP   |"
echo "-------------------------"

read -p "QUAL PASTA GOSTARIA DE FAZER BACKUP OBS: PASSAR O CAMINHO: " bak

if [ -d "$bak" ]; then
    DATA=$(date +%d-%m-%Y)
    mkdir -p "/home/$USER/backup_$DATA"
    cp -r $bak/* /home/$USER/backup_$DATA

else
    echo "ESSA PASTA NÃO EXISTE!"

fi