#!/bin/bash
# Autor: https://github.com/dougsabino
#
# Service Manager - Gerenciador de serviços simplificado
#
while : ; do

	# Menu
	read -p "
===================
= Service Manager =
===================

1. Iniciar Serviço
2. Ver todos os serviços ativos
3. Parar Serviço
4. Reiniciar Serviço
5. Ver Status do Serviço
6. Sair 

Escolha uma opção (1-6):
" opcao

	[ $? -ne 0 ] && clear && break
	
	case $opcao in
	    1)
	        clear
	        read -p "Digite o nome do serviço para iniciar: " servico
	        sudo systemctl start $servico

			if [ $? -eq 0 ]; then
	        	echo "
Serviço $servico iniciado."
			else
				echo "
Erro ao iniciar o serviço. 

Verifique o nome."
			fi
	        ;;
		2)
			clear 
			sudo systemctl list-units --type=service --state=active  
			clear
		   ;;
	    3)
	        clear
	        read -p "Digite o nome do serviço para parar: " servico
	        sudo systemctl stop $servico

			if [ $? -eq 0 ]; then
	        	echo "
Serviço $servico parado.
"
			sudo systemctl status $servico
			else
				echo "
Erro ao parar o serviço. 

Verifique o nome."
			fi
	        ;;
	    4)
	        clear
	        read -p "Digite o nome do serviço para reiniciar: " servico
			sudo systemctl restart $servico
			
			if [ $? -eq 0 ]; then
	        	echo "
Serviço $servico reiniciado."

			sudo systemctl status $servico
			else
				echo "
Erro ao reiniciar o serviço. 

Verifique o nome."
			fi
	        ;;
	    5)
	        clear
	        read -p "Digite o nome do serviço para verificar o status: " servico
	        sudo systemctl status $servico

			if [ $? -eq 0 ]; then
				echo "
Serviço $servico encontrado!

Verifique acima o status."
			else
				echo "
Serviço $servico não encontrado!"
			fi
	        ;;
	    6)
			clear ; exit 0
	        ;;
	    *)
	        echo "
Opção inválida. 

Tente novamente!"
	        sleep 2 ; clear
	        ;;
	esac

done
