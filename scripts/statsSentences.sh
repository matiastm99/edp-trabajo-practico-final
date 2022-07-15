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

la_oracion_mas_larga $1
la_oracion_mas_corta $1
