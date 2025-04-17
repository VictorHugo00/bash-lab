#!/bin/bash

while true; do

echo "---------------"
echo "| KILL PROCES |"
echo "---------------"

echo "(1) FILTRO DE USO DE CPU"
echo "(2) FILTRO DE USO DE RAM"
echo "(3) MATAR PROCESSOS"
echo "(4) SAIR"
read -p "QUAL SELECIONAR: " opc

if [ "$opc" -eq 1 ]; then
    echo "LISTANDO TODOS PROCESSOS DE CPU!"
    ps aux --sort=-%cpu | awk 'NR>1' |head -n 10 >> /home/$USER/log_cpu.log
    echo "PROCESSOS COM USO DE CPU!"
    cat /home/$USER/log_cpu.log

elif [ "$opc" -eq 2 ]; then
    echo "LISTANDO TODOS PROCESSOS DE RAM!"
    ps aux --sort=-%mem | awk 'NR>1' | head -n 10 >> /home/$USER/log_ram.log
    echo "PROCESSOS COM USO DE RAM!"
    cat /home/$USER/log_ram.log

elif [ "$opc" -eq 3 ]; then
    echo "QUAL PROCESSO MATAR:"
    read -p "DIGITE O PID DO PROCESSO: " pid
    kill $pid
    echo "PROCESSO FINALIZADO!"

elif [ "$opc" -eq 4 ]; then
    echo "SAINDO!"
    exit

else
    echo "OPÇÃO ERRADA! TENTE NOVAMENTE."

fi

    

