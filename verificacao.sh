#!/bin/bash

# DATA='2022/2023'
DATA='2023/2024'
PAGINA='https://www.isec.pt/pt/estudar/formas-de-ingresso/mestrados/#MestradosPrazos'

function verificar_inscricoes(){
if curl $PAGINA | grep $DATA ;then
        if dunstify "Data de ingressao lançada" "As datas para matricular no ano letivo $DATA já sairam" \
            -u critical -A "open","Abrir pagina" | grep open ;then 
            xdg-open $PAGINA 
        fi
        return 0;
    else
        return 1;
    fi
}

verificar_inscricoes
