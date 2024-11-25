#!/bin/bash

# Obtém o diretório do script
DIR="$(dirname "$(realpath "$0")")"
LIB_PATH="$DIR/lib"

# Adiciona o diretório ao LD_LIBRARY_PATH
export LD_LIBRARY_PATH="$LIB_PATH:$LD_LIBRARY_PATH"

# Remove o primeiro argumento (script) e obtém os outros
COMMAND="$DIR/tesseract_bin ${@:1}"

eval $COMMAND
