#!/bin/bash

clear

read -p "Digite o nome do arquivo que deseja remover: " arquivo

if [ -f $arquivo ]; then
	rm $arquivo
	echo "O arquivo '$arquivo' foi removido com sucesso!"
else 
	echo "O arquivo '$arquivo' não foi encontrado!"
fi
