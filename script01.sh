#!/bin/bash

clear

read -p "Iforme n1: " n1
read -p "Informe n: " n2

echo "Menu:"
echo "1.Soma"
echo "2.Subtração"
echo "3.Multiplicação"
echo "4.Divisão"
echo "5.Sair"

read -p "Escolha uma opção: " opcao

case $opcao in 

	1)resultado=$(expr $n1 + $n2)
	echo "Resultado: $resultado"
	;;
	
	2)resultado=$(expr $n1 - $n2)
	echo "Resultado: $resultado"
	;;
	
	3)resultado=$(expr $n1 \* $n2)
	echo "Resultado: $resultado"
	;;
	
	4)resultado=$(expr $n1 / $n2)
	echo "Resultado: $resultado"
	;;
	
	5)
	echo "Você saiu do Menu"
	;;
	
	esac
	
