#!/usr/bin/env bash

echo "Estas son las palabras que cumplen con la condicion de nombre propio (Nnnnn):"

for PALABRA in $(cat $1); do
	if [[ "$PALABRA" =~ ^[[:upper:]] ]]; then
		echo $PALABRA
	fi
done < $1
