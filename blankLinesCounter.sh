#!/usr/bin/env bash

n=0
while read line; do
	[[ -z "$line" ]] && n=$((n+1))
done < $1

echo "La cantidad de lineas en blanco es: $n"
