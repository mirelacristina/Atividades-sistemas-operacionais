#!/bin/bash
clear

echo "------- Gerenciamento de Arquivos -------"
echo "1. Procurar arquivo"
echo "2. Procurar palavra em arquivo"
echo "3. Renomear arquivo"
echo "4. Mover arquivo"
echo "5. Remover arquivo"
echo "6. Comparar arquivos"
echo "7. Sair"
read -p "Escolha uma opção: " opcao 

case $opcao in
	1) 
		read -p "Digite o nome do arquivo à procurar: " nome
		find / -name "$nome" 2>/dev/null
		;;
	
	2) 
		read -p "Digite a palavra à procurar: " palavra
		read -p "Digite o nome do arquivo à procurar: " arquivo
		if [ -f "$arquivo" ]; then
			grep -n "$palavra" "$arquivo" 
		else
			echo "Arquivo não encontrado!"
		fi
		;;
	
	3) 
		read -p "Digite o nome do arquivo: " n1
		read -p "Digite outro nome para renomear o arquivo anterior: " n2
		if [ -f "$n1" ]; then
			mv "$n1" "$n2"
			echo "Arquivo renomeado com sucesso!"
		else
			echo "Arquivo não encontrado!"
		fi
		
		;;
	
	4)
		read -p "Digite o nome do arquivo: " nome1
		read -p "Digite o diretório de destino: " nome2
		if [ -f "$nome1" ] && [ -d "$nome2" ]; then
			mv "$nome1" "$nome2"
			echo "Arquivo movido com sucesso!"
		else
			echo "Arquivo ou diretório não encontrado!"
		fi
		;;
	5) 
		read -p "Digite o nome do arquivo que deseja remover: " arquivo1
		if [ -f "$arquivo1" ]; then 
			rm "$arquivo1"
			echo "Arquivo removido com sucesso!"
		else
			echo "Arquivo não encontrado!"
		fi
		;;
	6)
		read -p "Digite o nome do arquivo: " arq1
		read -p "Digite o nome do arquivo que deseja comparar: " arq2
		if [ -f "$arq1" ] && [ -f "$arq2" ]; then 
			diff "$arq1" "$arq2" > /dev/null
			if [ $? -eq 0 ]; then
				echo "Os arquivos são iguais!"
			else
				echo "Os arquivos possuem diferenças!"
				diff "$arq1" "$arq2"
			fi
		else
			echo "Um dos arquivos não foi encontrado!"
		fi
		;;
		
	7)
		echo "Você saiu do Menu!"
		;;
		
	*) 
		echo "Opção inválida!"
		;;
esac
