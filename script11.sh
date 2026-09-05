#!/bin/bash

clear

echo "LISTAGEM DE USUÁRIOS:"
echo "1.Simples"
echo "2.Detalhada"
read -p "Escolha uma opção: " opcao


case $opcao in 
	1) 
		who
		;;
	2)
		who -a
		;;
	
	*) 
		echo "Opção inválida!"
		;;
esac

echo "Esses são os usuários atualmente conectados"
