# Minha Versão

perguntar1= read('Qual o nome da pasta:' )

if [ -d "/home/$USER/$perguntar1"] then
    cd /home/$USER/$perguntar1 && touch log.txt

else then
    echo "A pasta" $perguntar1 'nao existe!'

perguntar2= read('Quer criar a pasta:' )

if mkdir /home/$USER/$perguntar2 && cd /home/$USER/$perguntar2 && touch log.txt

# Versão Corrigida Chat

#!/bin/bash

read -p "Qual o nome da pasta: " perguntar1

if [ -d "/home/$USER/$perguntar1" ]; then
    cd "/home/$USER/$perguntar1" && touch log.txt
else
    echo "A pasta $perguntar1 não existe!"

    read -p "Quer criar a pasta? (s/n): " resposta

    if [ "$resposta" = "s" ]; then
        mkdir "/home/$USER/$perguntar1" && cd "/home/$USER/$perguntar1" && touch log.txt
        echo "Pasta criada e log.txt adicionado."
    else
        echo "Beleza! Nada foi feito."
    fi
fi