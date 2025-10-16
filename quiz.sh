#!/bin/bash

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

SCORE=0
TOTAL=0

print_header() {
	echo "=============================="
	echo "     QUIZ MATEMÁTICO"
	echo "=============================="
}

while true; do
	clear
	print_header
	echo "Puntaje: ${SCORE}/${TOTAL}"
	echo
	echo "1) Problemas de suma"
	echo "2) Problemas de resta"
	echo "3) Problemas de multiplicación"
	echo "4) Problemas de división"
	echo "5) Salir"
	echo
	read -rp "Elige una opción [1-5]: " opt

	case "$opt" in
		1)
			"$BASE_DIR/sum.sh"
			result=$?
			TOTAL=$((TOTAL+1))
			if [ $result -eq 0 ]; then SCORE=$((SCORE+1)); fi
			;;
		2)
			"$BASE_DIR/sub.sh"
			result=$?
			TOTAL=$((TOTAL+1))
			if [ $result -eq 0 ]; then SCORE=$((SCORE+1)); fi
			;;
		3)
			"$BASE_DIR/mul.sh"
			result=$?
			TOTAL=$((TOTAL+1))
			if [ $result -eq 0 ]; then SCORE=$((SCORE+1)); fi
			;;
		4)
			"$BASE_DIR/div.sh"
			result=$?
			TOTAL=$((TOTAL+1))
			if [ $result -eq 0 ]; then SCORE=$((SCORE+1)); fi
			;;
		5)
			echo
			echo "Resultado final: ${SCORE}/${TOTAL}"
			echo "Adiós!"
			exit 0
			;;
		*)
			echo "Opción inválida. Presiona Enter para continuar."
			read -r
			;;
	esac
	echo "Presiona Enter para continuar..."
	read -r
done