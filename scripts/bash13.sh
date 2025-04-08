#!/bin/bash

while true; do

arq="/root/usuarios.txt"

echo "-------------"
echo "| LOGIN SYS |"
echo "-------------"

echo "SYS LOGIN: "
read "USER: " user
read "PASS: " passwd

pass="$user:$passwd"

if [ grep -r "$pass" $arq ]; then
    echo "ACESSO AUTORIZADO!"

else
    echo "ACESSO NEGADO!"

fi

done