#!/bin/bash
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$BASE_DIR/lib.sh"

# División: generar división con resultado entero
# Escoger divisor entre 1 y 10, cociente entre 1 y 10, luego multiplicar para obtener dividendo
a=$(rand_int 1 10)   # primer número
b=$(rand_int 1 10)   # segundo número
dividendo=$((a * b)) # producto a*b se llama dividendo
divisor=$b           # b se llama divisor
correct=$a           # resultado es a

echo "Resuelve: $dividendo ÷ $divisor = ? (resultado entero)"

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
