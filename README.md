
# Trabalho 1 LFA 2019/1 

**Autor:**  
>Marcos Antonio Carneiro de Paula

**Linguagem:** 
>- Python 3

**Ambiente de programação:** 
>- VS Code 
>- Lark
>- Manjaro Linux 18.0.4 *Illyria*

**Descrição geral dos arquivos aqui contidos**

*source/mel.py*
>Código fonte da implementação do *Parser Descendente Recursivo* com o Lark

**Executando** 

Para executar o programa existe duas formas:
- **Excutar o *source/execute.sh*:** 

    - Conceda permissão de execução ao script:
    ```bash
    $ sudo chmod +x ./source/execute.sh
    ```
    - O script verifica se existe [virtual env](https://pythonacademy.com.br/blog/python-e-virtualenv-como-programar-em-ambientes-virtuais), se não existir ele tenta criar um, e executa o *mel.py*;
- **Executar manualmente**
    - Se existir não virtual env (diretório *source/env* ) execute os comandos (de preferencia no diretório *source/* ):
    
        - Atualizando os repositorios do sistema
        Debian-based:
        ```bash
        $ sudo apt-get update (debian based)
        ou
        $ sudo pacman -Sy (arch linux based)
        ```
        - Instalando o pip (se não estiver instalado):
        ```bash
        $ sudo apt install python3-pip (debian based)
        ou
        $ sudo pacman -S python-pip (arch linux based)
        ```
        - Verificando o pip está atualizado:
        ```bash
        $ python3 -m pip install --upgrade pip
        ```
        - Instalando o virtual env:
        ```bash
        $ sudo pip3 install virtualenv
        ```
        - Criando o virtual env
        ```bash
        $ python3 -m venv ./env
        ```
        - Ativando o virtual env:
        ```bash
        $ source ./env/bin/activate 
        ou
        $ . ./env/bin/activate
        ```
        - Instalando o Lark
        ```bash
        pip install lark-parser

    - Se já exitir virtual env (diretório *source/env* ), dentro do doretório *source*, execute o seguinte comando:
        - Ativando o virtual env:
        ```bash
        $ source ./env/bin/activate 
        ou
        $ . ./env/bin/activate
        ```
    - E, finalmente, execute o mel.py:
        ```bash
        $ python3 ./mel.py
        ou 
        $ python ./mel.py
        ```
