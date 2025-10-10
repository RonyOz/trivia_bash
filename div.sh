#!/bin/bash
BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$BASE_DIR/lib.sh"

# División: generar división con resultado entero
# Escoger divisor entre 1 y 10, cociente entre 0 y 100, luego multiplicar para obtener dividendo
b=$(rand_int 1 10)   # divisor
q=$(rand_int 0 100)  # cociente
a=$((b * q))         # dividendo
correct=$q

# Para hacerlo un poco más interesante, a puede ser grande (hasta 1000)

echo "Resuelve: $a ÷ $b = ? (resultado entero)"
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
