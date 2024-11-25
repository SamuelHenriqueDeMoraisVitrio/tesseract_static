
#!/bin/bash


# Obtém o diretório do script
DIR="$(dirname "$(realpath "$0")")"
LIB_PATH="$DIR/lib"
# Adiciona o diretório ao LD_LIBRARY_PATH
export LD_LIBRARY_PATH="$LIB_PATH:$LD_LIBRARY_PATH"
BIN_PATH="$DIR/tesseract_bin"
"$BIN_PATH" "${@:2}"
