#!/bin/bash
clear

read -p "Digite o nome de um arquivo: " arquivo1
read -p "Digite o nome de outro arquivo: " arquivo2

if [ -f "$arquivo1" ] && [ -f "$arquivo2" ]; then

	diff "$arquivo1" "$arquivo2" > /dev/null
	
	if [ $? -eq 0 ]; then
	echo "Os arquivos são iguais!"
	else 
	echo "Os arquivos possuem diferenças:"
	diff "$arquivo1" "$arquivo2"
	fi

else 
	echo "Arquivo não foi encontrado!"
fi
