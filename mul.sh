#!/bin/bash
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$BASE_DIR/lib.sh"

# Multiplicación: factor1 0-100, factor2 0-10
a=$(rand_int 0 100)
b=$(rand_int 0 10)
correct=$((a * b))

echo "Resuelve: $a × $b = ?"

# 3 intentos
for intento in {1..3}; do
    ans=$(ask_answer "Intento $intento/3 - Tu respuesta: ")
    
    if ! check_numeric "$ans"; then
        echo "Entrada inválida. Se esperaba un número entero."
        continue
    fi
    
    if [ "$ans" -eq "$correct" ]; then
        echo "¡Correcto!"
        exit 0
    else
        if [ $intento -lt 3 ]; then
            echo "Incorrecto. Intenta de nuevo."
        fi
    fi
done

echo "Incorrecto. La respuesta correcta era: $correct"
exit 1
