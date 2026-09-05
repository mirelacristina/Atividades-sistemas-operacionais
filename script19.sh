#!/bin/bash
clear

echo "------- Menu-------"
echo "1. Data atual"
echo "2. Versão do kernel"
echo "3. Tempo de funcionamento"
echo "4. Usuário conectados"
echo "5. Processos em execução"
echo "6. Sair"
read -p "Escolha uma opção: " opcao 

case $opcao in
	1) 
		echo "A data atual é:"
		date
		;;
	
	2) 
		echo "A versão do Kernel é:"
		uname -r
		;;
	
	3) 
		echo "O tempo de funcionamento é:"
		uptime
		;;
	
	4)
		echo "Os usuários conectados são:"
		who
		;;
	5) 
		echo "Os processos em execução são:"
		ps aux
		;;
	6)
		echo "Você saiu do Menu"
		;;
		
	*)
		echo "Opção inválida!"
		;;
esac
	


