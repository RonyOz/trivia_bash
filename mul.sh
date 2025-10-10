#!/bin/bash
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$BASE_DIR/lib.sh"

# Multiplicación: factor1 0-100, factor2 0-10
a=$(rand_int 0 100)
b=$(rand_int 0 10)
correct=$((a * b))

echo "Resuelve: $a × $b = ?"
ans=$(ask_answer "Tu respuesta: ")

if ! check_numeric "$ans"; then
    echo "Entrada inválida. Se esperaba un número entero."
    exit 1
fi

if [ "$ans" -eq "$correct" ]; then
    echo "¡Correcto!"
    exit 0
else
    echo "Incorrecto. La respuesta correcta era: $correct"
    exit 1
fi
