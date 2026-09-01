#!/bin/bash

clear

echo "Menu:"
echo "1.Procurar um arquivo com find"
echo "2.Procurar um comando com whereis"
echo "3.Procurar um arquivo com locate"
read -p "Escolha uma opção: " opcao

read -p "Digite o nome do arquivo ou comando: " nome

case $opcao in 
	1) 
		find / -name $nome 2>/dev/null
		;;
	
	2)
		whereis "$nome"
		;;
	
	3) 
		locate "$nome"
		;;
	
	*) 
		echo "Opção inválida!"
		;;
esac
