#!/bin/sh
# Digitar somente o nome do playbook e inventário para executar
# Autor: https://github.com/dougsabino
#
# Uso:
# (Argumentos)
# ./playbook-run.sh playbook inventario
# 
# ou
#
# (Informar dados)
# ./playbook-run.sh
# Informar Nome do playbook
# Informar Arquivo de inventário

if [ -z $1 ]; then
	read -p "Digite o nome do playbook para executar: " playbook	

	read -p "Digite o nome do arquivo de inventário: " inventario

	if [ -z $playbook ]; then
		echo "
Erro: Digite o nome do playbook."
		exit 1
	elif [ -z $inventario ]; then
		echo "
Erro: Digite o nome do arquivo de inventário."
		exit 1
	else
		ansible-playbook -i $inventario $playbook
	fi

elif [ -e $1 ] && [ -e $2 ]; then
	echo "
Playbook informado: $1

Inventário informado: $2
"
	ansible-playbook -i $2 $1
	exit 0
else
	exit 1

fi
