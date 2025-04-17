#!/bin/bash

touch /root/dados.log

echo "ESTRUTURA DO BANCO"
echo "NOME, IDADE, SERIE"
echo "GUARDAR TUDO NO dados.log"

ban="/root/dados.log"

if [ -f "$ban" ]; then
    read -p "ADICIONAR NOME: " nome
    read -p "ADICIONAR IDADE: " idade
    read -p "ADICIONAR SERIE: " serie
    data=$(date "+%d/%m/%Y %H:%M:%S")
    echo "NOME: $nome, IDADE: $idade, SERIE: $serie, REGISTRADO: $data " >> $ban
    echo "ALUNO REGISTRADO COM SUCESSO!"
else
    echo "ERROR!"

fi
done
