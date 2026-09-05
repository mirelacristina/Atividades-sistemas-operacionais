#!/bin/bash

clear

read -p "Nome do arquivo: " arquivo
echo "MENU:"
echo "1.Permissão 644"
echo "2.Permissão 755"
echo "3.Permissão 700"
read -p "Escolha uma opção: " opcao

if [ -f "$arquivo" ]; then
	case $opcao in 
	1) 
		chmod 644 "$arquivo"
		;;
	2)
		chmod 755 "$arquivo"
		;;
	3) 
		chmod 700 "$arquivo"
		;;
	*) 
		echo "Opção inválida!"
		exit
		;;
	esac
	echo "A permissão foi modificada com sucesso!"
else 
	echo "Arquivo não encontrado!"
fi
