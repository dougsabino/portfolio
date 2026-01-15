#!/bin/sh
# Verificar se o dialog está instalado em cada distribuição Linux
if ! command -v dialog &> /dev/null; then
	sudo apt install dialog
		if ! command -v apt &> /dev/null; then
			sudo yum install dialog
		elif ! command -v yum &> /dev/null; then
			sudo dnf install dialog
		elif ! command -v dnf &> /dev/null; then
			sudo pacman -S dialog
		else
			echo "Nenhum gerenciador de pacotes encontrado (Debian, Red Hat, Arch)"
		fi
else
	echo "Erro ao executar. Verifique a instalação do dialog"
fi
