#!/bin/bash

clear

read -p "Digite o nome do arquivo que deseja renomear: " arquivo
read -p "Digite o novo nome do arquivo: " novo

if [ -f $arquivo ]; then
	mv $arquivo $novo
	echo "O arquivo '$arquivo' foi renomeado para $novo com sucesso!"
else 
	echo "O arquivo '$arquivo' não existe!"
fi

