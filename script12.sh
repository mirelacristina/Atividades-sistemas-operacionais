#!/bin/bash
clear

read -p "Digite o nome de um arquivo: " arquivo
read -p "Digite a permissão: " permissao

if [ -f "$arquivo" ]; then
	chmod "$permissao" "$arquivo"
	echo "A permissão foi modificada!"
else 
	echo "Arquivo não foi encontrado!"
fi

