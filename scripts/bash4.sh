#!/bin/bash

while true; do

    echo "-----------------------"
    echo "|BUSCADOR DE EXTENSOES|"
    echo "-----------------------"

    echo "(1) BUSCAR POR EXTENSÕES: "
    echo "(2) VER RELATORIO"
    echo "(3) SAIR"
    read "SELECIONE UMA OPÇÃO: " opc

    if [ "$opc" -eq 1 ]; then
        read "QUAL EXTENSÃO QUER BUSCAR: " bus
        find -type f -name "*.$bus" > /home/$USER/Documents/out.txt
        echo "ACHEI OS SEGUINTES ARQUIVOS: "
        cat /home/$USER/Documents/out.txt

    elif [ "$opc" -eq 2 ]; then
        echo "EXISTE OS SEGUINTES ARQUIVOS: "
        ls /home/$USER/Documents/
        read "SELECIONE QUAL VER: " arq
        cat /home/$USER/Documents/$arq

    elif [ "$opc" -eq 3 ]; then
        echo "SAINDO"
        exit
    
    else
        echo "OPÇÃO ERRADA! TENTE NOVAMENTE."

fi
        
