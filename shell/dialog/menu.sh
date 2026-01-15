#!/bin/sh
# Verificar se o dialog está instalado
./verifica.sh

# Escolher uma opção
while : ; do
    resposta=$(
        dialog --stdout          \
                    --title 'Menu'   \
                    --menu 'Escolha uma opção:'             \
                    0 0 0   \
                    1 'Ver arquivo' \
                    2 'Escolher data' \
                    0 'Sair' )
    
    [ $? -ne 0 ] && clear && break

    case $resposta in
        1) dialog --title 'Arquivo' --textbox ~/scripts/portfolio/shell/dialog/arquivo.txt 15 30 ;;
        2) dialog --title 'Escolha a data:' --calendar '' 0 0 01 01 2026 2>~/scripts/portfolio/shell/dialog/data.tmp
        data=$( cat ~/scripts/portfolio/shell/dialog/data.tmp )
            if [ -z $data ]; then
                dialog --msgbox "Data não escolhida. Tente novamente." 5 40
                clear
            else
                dialog --msgbox "Data escolhida: 
$data" 10 30
                clear
            fi
        ;;
        *) dialog --msgbox "Saindo..." 5 30 && clear && break ;;
    esac
done
