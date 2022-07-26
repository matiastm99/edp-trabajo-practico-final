#!/usr/bin/env bash

echo "Estas son las palabras que cumplen con la condicion de nombre propio (Nnnnn):"
NOMBRE='^[[:upper:]]'
for PALABRA in $(cat $1); do
	if [[ $PALABRA =~ $NOMBRE ]]; then
		echo $PALABRA
	fi
done < $1
