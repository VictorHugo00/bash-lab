#!/bin/bash

touch /home/$USER/Documents/tarefas.txt
nl -ba /home/$USER/Documents/tarefas.txt

echo "-------------------"
echo "| LISTA DE TAREFA |"
echo "-------------------"

echo "(1) ADICIONAR NOVA TAREFA"
echo "(2) LISTAR TODAS AS TAREFAS"
echo "(3) BUSCAR TAREFA POR PALAVRA-CHAVE"
echo "(4) MARCAR UMA TAREFA COMO CONCLUIDA"
echo "(5) APAGAR TAREFA POR NÚMERO"
echo "(6) SAIR"

read -p "SELECIONA A OPÇÃO: " opc

arq=$(/home/$USER/Documents/tarefas.txt)

if [ "$opc" -eq 1 ]; then
    read -p "NOME DA TAREFA: " tar
    esq="[ ] TAREFA = $tar"
    echo "$esq" >> $arq

elif [ "$opc" -eq 2 ]; then
    echo "TAREFAS ATIVAS:"
    cat $arq

elif [ "$opc" -eq 3 ]; then
    read -p "QUAL TAREFA DESEJA PROCURAR: " tar2
    cat $arq | grep -i $tar2

elif [ "$opc" -eq 4 ]; then

elif [ "$opc" -eq 5 ]; then
    echo "QUAL TAREFA QUER APAGAR DIGITE O NUMERO: " tar3
    sed -i '/^$tar3[[:space:]]/d'
    echo "TAREFA $tar3 APAGADA!"

elif [ "$opc" -eq 6 ]; then
    exit

fi
