#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd ) #caminho para o script actual
export VERIFICACAO="$SCRIPT_DIR/verificacao.sh"
if cat $SCRIPT_DIR/verificar_inscricoes_template.service | sed -e "s@_PATH_@${VERIFICACAO}@g" >  $SCRIPT_DIR/temp_ver_ins.service;then
    cp $SCRIPT_DIR/temp_ver_ins.service ~/.config/systemd/user/verificar-inscricoes.service
    if systemctl --user enable --now verificar-inscricoes.service ; then
        rm $SCRIPT_DIR/temp_ver_ins.service
    fi
else
    echo something wrong happened
    return 1
fi