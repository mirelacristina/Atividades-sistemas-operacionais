#!/bin/bash
clear

read -p "Digite o nome do usuário: " usuario

grep -q "^$usuario:" /etc/passwd

if [ $? -eq 0 ]; then
	echo "Usuário foi encontrado!"
else 
	echo "Usuário não foi encontrado!"
fi

