#!/bin/bash
clear

read -p "Digite o nome do processo: " processo

resultado=$(ps aux | grep "$processo" | grep -v grep)

if [ -n "$resultado" ]; then
	echo "Processos encontrados:"
	echo "$resultado"
	
else
	echo "Processo não encontrado!"
fi
