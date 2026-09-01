#!/bin/bash
clear

read -p "Digite o nome do usuário: " usuario

if grep -q "^$usuario:" /etc/passwd; then
	echo "O nome do usuário é '$usuario'"
	
	echo "Diretório de trabalho:"
	grep "$usuario" /etc/passwd
	
	echo "Espaço utilizado no disco:"
	du -sh /home/$usuario
	
else
	echo "Usuário não econtrado!"
fi

