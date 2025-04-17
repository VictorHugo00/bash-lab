#!/bin/bash

while true; do

echo "----------------------"
echo "| OLD ARCHIVE REMOVER|"
echo "----------------------"

echo "1 - LISTAR ARQUIVOS ANTIGOS"
echo "2 - SAIR"

read -p "ESCOLHA O QUE FAZER: " opc1

if [ "$opc1" -eq 1 ]; then
    find /home/$USER/ -type f -atime [+-]n > /home/$USER/old_files.log
    echo /home/$USER/old_files.log
    read -p "DESEJA DELETAR OS ARQUIVOS? yes or no" opc2

elif [ "$opc2" == "yes" ]; then
    echo "DELETANDO!"
    find /home/$USER/ -type f -atime [+-] -delete

elif [ "$opc2" == "no" ]; then
    echo "OK, VOLTANDO!"

elif [ "$opc1" -eq 2 ]; then
    echo "SAINDO!"
    exit

else
    echo "OPÇÕES INCORETAS TENTE NOVAMENTE!"

fi
