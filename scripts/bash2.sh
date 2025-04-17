#!/bin/bash

read -p "Qual pasta quer procurar: " proc

if find "$proc" -name "*,txt" -type f > /home/$USER/Documents/output.txt; then
    echo "Encontrei esses itens: " && cat /home/$USER/Documents/output.txt
else
    echo "Encontrei nada :<"
fi