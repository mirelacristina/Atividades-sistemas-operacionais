#!/bin/bash
clear

read -p "Digite o nome do arquivo: " arquivo

if [ -f "$arquivo" ]; then 
	linhas=$(wc -l < "$arquivo")
	palavras=$(wc -w < "$arquivo")
	caracteres=$(wc -c < "$arquivo")
	
	echo "Arquivo: $arquivo"
	echo "Linhas: $linhas"
	echo "Palavras: $palavras"
	echo "Caracteres: $caracteres"
else
	echo "Arquivo não encontrado!"
fi
