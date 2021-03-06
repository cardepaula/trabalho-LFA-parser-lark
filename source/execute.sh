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
        echo "_________Atualizando os repositorios_________"
        sudo apt-get update || sudo pacman -Sy
        
		echo "_________Instalando o pip_________"
        sudo apt install python3-pip python3-venv || sudo pacman -S python-pip

        echo "_________Instalando o virtual env_________"
        if sudo pip3 install virtualenv
		then
			echo "_________Criando o virtual env_________"
			python3 -m venv "$DIR_RELATIVO/env"

			echo "_________Ativando o virtual env_________"
			if source "$DIR_RELATIVO/env/bin/activate" || . "$DIR_RELATIVO/env/bin/activate"
			then
				echo "_________Instalando o Lark_________"
				pip install lark-parser
				echo "\n\n\n"
			else
				echo "_________Error ao ativar o virtual env_________"
				exit 1
			fi
		else
			echo "_________Error ao instalar o virtual env_________"
			exit 1
		fi
		clear
    fi
fi

python3 "$DIR_RELATIVO/mel.py"

