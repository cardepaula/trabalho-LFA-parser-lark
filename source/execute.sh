#!/bin/bash
DIR_RELATIVO="${0%/*}"

if [ -e "$DIR_RELATIVO/env" ]
then

    source "$DIR_RELATIVO/env/bin/activate" || . "$DIR_RELATIVO/env/bin/activate"
else
    echo "Virtual env não encontrado. Deseja criá-lo? [S|n]"
    read RESP

    if [ $RESP -eq "n" ]
    then
        exit
    else
        echo "Atualizando os repositorios"
        sudo apt-get update || sudo pacman -Sy
        echo "Instalando o pip"
        sudo apt install python3-pip || sudo apt install python-pip || sudo pacman -S python-pip
        echo "Atualizando o pip"
        python3 -m pip install --upgrade pip
        echo "Instalando o virtual env"
        sudo pip3 install virtualenv
        echo "Criando o virtual env"
        python3 -m venv "$DIR_RELATIVO/env"
        echo "Ativando o virtual env"
        source "$DIR_RELATIVO/env/bin/activate" || . "$DIR_RELATIVO/env/bin/activate"
        echo "Instalando o Lark"
        pip install lark-parser
        echo "\n\n\n"
    fi
fi

python3 "$DIR_RELATIVO/mel.py"
