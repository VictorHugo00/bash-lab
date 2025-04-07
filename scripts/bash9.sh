#!/bin/bash

echo "---------------------"
echo "| CRIADOR DE USUARIO|"
echo "---------------------"

while true; do

echo "ESCOLHA UMA OPÇÃO"
echo "(1) CRIAR USUARIO"
echo "(2) MUDAR SENHA DE USUARIO"
echo "(3) CRIAR PASTA PARA USUARIO"
echo "(4) MUDAR DONO DE PASTA"
echo "(5) SAIR"
read -p "ESCOLHA UMA OPÇÃO: " opc

if [ "$opc" -eq 1 ]; then
    read -p "ESCOLHA O NOME: " user
    useradd $user
    echo "USUARIO $user ADICIONADO!"

elif [ "$opc" -eq 2 ]; then
    read -p "INSIRA O USUARIO PARA TROCAR A SENHA: " userp
    read -p "QUAL VAI SER A SENHA: " pass
    echo "$userp:$pass" | chpasswd
    echo "A SENHA DO USUARIO $userp FOI ALTERADA!"

elif [ "$opc" -eq 3 ]; then
    read -p "INSIRA O NOME DA PASTA: " pasta1
    mkdir /home/$pasta1
    echo "PASTA CRIADA!"

elif [ "$opc" -eq 4 ]; then
    read -p "QUAL PASTA MUDAR DE DONO, OBS: PASSAR CAMINHO!: " pasta2
    read -p "QUAL USUARIO VAI SE TORNAR DONO: " dono
    chown -R $dono:$dono $pasta2
    echo "A PASTA $pasta2 AGORA PERTENCE A $dono!"

elif [ "$opc" -eq 5 ]; then
    echo "SAINDO!"
    exit

else
    echo "OPÇÃO ERRADA! ESCOLHA OUTRA."

fi