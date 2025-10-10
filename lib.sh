#!/bin/bash

# Funciones auxiliares para el quiz

rand_int() {
    # rand_int min max
    local min=$1
    local max=$2
    echo $(( RANDOM % (max - min + 1) + min ))
}

ask_answer() {
    # ask_answer prompt
    local prompt="$1"
    local ans
    read -rp "$prompt" ans
    echo "$ans"
}

check_numeric() {
    # check_numeric value -> returns 0 if integer, 1 otherwise
    [[ "$1" =~ ^-?[0-9]+$ ]]
}
