#!/usr/bin/env bash

function palabra_mas_corta {
    CORTA="aaaaaaaaaaaaaaaaaa"
	for PALABRA	in $(cat $1); do
		if [ ${#PALABRA} -lt ${#CORTA} ]; then
			CORTA=$PALABRA
		fi
	done
	echo "La palabra mas corta es: $CORTA"
}
											
function palabra_mas_larga {
	LARGA=""
	for PALABRA in $(cat $1); do
		if [ ${#PALABRA} -gt ${#LARGA} ]; then
			LARGA=$PALABRA
		fi
	done
	echo "La palabra mas larga es: $LARGA"
}

palabra_mas_corta $1
palabra_mas_larga $1
