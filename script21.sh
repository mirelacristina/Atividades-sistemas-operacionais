#!/bin/bash
clear

echo "----- Gerenciamento de processos -----"
echo "1 - Listar processos"
echo "2 - Procurar processo"
echo "3 - Encerrar processo"
echo "4 - Sair"
read -p "Escolha uma opção: " opcao

case $opcao in
	1)
		echo "A seguir, os processos em execução no sistema:"
		ps aux
		;;

	2)
		read -p "Digite o nome do processo que deseja procurar: " processo
		resultado=$(ps aux | grep "$processo" | grep -v grep)
		if [ -n "$resultado" ]; then
			echo "Processos encontrados:"
			echo "$resultado"
		else
			echo "Nenhum processo encontrado com esse nome."
		fi
		;;

	3)
		read -p "Digite o PID do processo que deseja encerrar: " pid
		ps -p "$pid" > /dev/null 2>&1
		if [ $? -eq 0 ]; then
			echo "PID informado: $pid"
			read -p "Deseja realmente encerrar esse processo? (s/n): " confirmacao
			if [ "$confirmacao" = "s" ]; then
				kill "$pid"
				echo "Processo $pid encerrado."
			else
				echo "Operação cancelada."
			fi
		else
			echo "Nenhum processo encontrado com o PID $pid."
		fi
		;;

	4)
		echo "Saindo..."
		;;

	*)
		echo "Opção inválida!"
		;;
esac
