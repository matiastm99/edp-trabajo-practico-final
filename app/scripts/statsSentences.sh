#!/usr/bin/env bash

function la_oracion_mas_larga {
	LARGA=""
	while read -d "." line; do
		if [ ${#line} -gt ${#LARGA} ]; then
			LARGA=$line
		fi
	done < $1
	echo "La oracion mas larga es: $LARGA"
}

function la_oracion_mas_corta {
	CORTA=$LARGA
	while read -d "." line; do
		if [ ${#line} -lt ${#CORTA} ]; then
			CORTA=$line
		else
			continue
		fi
	done < $1
	echo "La oracion mas corta es: $CORTA"
}

function promedio_de_longitud {
    ORACION=0
    c=0
    while read -d "." line; do
		for PALABRA in $line; do
			ORACION=$((ORACION+1))
		done
		c=$((c+1))
    done < $1
	
	PROMEDIO=$((ORACION/c))
	echo "El promedio de longitud de una oracion de es: $PROMEDIO palabras"
}

la_oracion_mas_larga $1
la_oracion_mas_corta $1
promedio_de_longitud $1
