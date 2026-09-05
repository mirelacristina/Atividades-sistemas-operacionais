#!/bin/bash
clear

read -p "Digite o PID do processo para encerrá-lo: " codigo

ps -p "$codigo" > /dev/null 2>&1

if [ $? -eq 0 ]; then
	echo "Pid informado: $codigo"
	read -p "Deseja mesmo encerrar esse proceso (s/n): " escolha
	
	if [ "$escolha" = "s" ]; then 
		kill "$codigo"
		echo "O processo $codigo foi encerrado!"
	
	else
		echo "Operação cancelada!"
	fi

else
	echo "PID não encontrado!"
fi

