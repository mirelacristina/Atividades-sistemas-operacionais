#!/bin/bash

clear

read -p "Digite o nome do arquivo que deseja mover: " arquivo
read -p "Digite o diretório de destino: " destino

if [ -f $arquivo ]; then
	mv $arquivo $destino
	echo "O arquivo '$arquivo' foi movido para o diretório $destino 
	com sucesso!"
else 
	echo "Essa operação não foi realizada"
fi
