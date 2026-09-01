#!/bin/bash
clear

read -p "Digite uma palavra: " palavra
read -p "Digite o nome de um arquivo: " arquivo

grep -q "$palavra" "$arquivo"

if [ $? -eq 0 ]; then
	echo "A palavra foi encontrada!"
	echo "Linhas onde ela aparece:"
	grep -n "$palavra" "$arquivo"
else 
	echo "A palavra não foi encontrada!"
fi

