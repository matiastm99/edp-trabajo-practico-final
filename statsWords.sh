#!/usr/bin/env bash

function palabra_mas_corta {
    shortest="aaaaaaaaaaaaaaaaaa"
	for word in $(cat $1); do
		if [ ${#word} -lt ${#shortest} ]; then
			shortest=$word
		fi
	done
	echo "La palabra mas corta es: $shortest"
}
											
function palabra_mas_larga {
	longest=""
	for word in $(cat $1); do
		if [ ${#word} -gt ${#longest} ]; then
			longest=$word
		fi
	done
	echo "La palabra mas larga es: $longest"
}

function promedio_longitud_palabras {
	echo ${#longest} ${#shortest}
	echo promedio=$((${#longest}/${#shortest}))
}

palabra_mas_corta $1
palabra_mas_larga $1
promedio_longitud_palabras
