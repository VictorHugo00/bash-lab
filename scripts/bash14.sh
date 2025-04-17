#!/bin/bash

echo "-------------------------"
echo "| MALICIOUS FILE FOUNDER|"
echo "-------------------------"

arq1="/home/$USER/Downloads/"
arq2="/root/log/removed_scripts.log"

while true; do

[ ! -d "/root/log/"] && mkdir /root/log/
[ ! -f "$arq2" ] && touch $arq2

echo "(1) FAZER VARREDURA: "
echo "(2) EXCLUIR ARQUIVOS: "
echo "(3) SAIR"
read -p "O QUE FAZER: " opc

if [ "$opc" -eq 1 ]; then   
    find $arq1 -type f -name "*.sh" >> $arq2
    echo "OS SEGUINTE ITENS FORAM ACHADO!"
    cat $arq2

elif [ "$opc" -eq 2 ]; then 
    echo "EXCLUIR ITENS"
    read -p "QUAIS ITENS VÃO SER EXCLUIDOS: " arq3
    rm -rf $arq1/$arq3
    echo "ARQUIVOS EXCLUIDOS!"

elif [ "$opc" -eq 3 ]; then
    echo "SAINDO!"
    exit

else
    echo "OPÇÃO ERRADA, TENTE NOVAMENTE!"

fi

done