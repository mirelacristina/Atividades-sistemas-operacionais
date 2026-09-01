#!/bin/bash
clear

read -p "Digite o nome de um arquivo: " arquivo1
read -p "Digite o nome de outro arquivo: " arquivo2
read -p "Digite o nome do arquivo de resultado: " resultado

if [ -f "$arquivo1" ] && [ -f "$arquivo2" ]; then
	cat "$arquivo1" "$arquivo2" > "$resultado"
	echo "Arquivos concatenados com sucesso em '$resultado'!"
else 
	echo "Os arquivos não foram concatenados"
fi
