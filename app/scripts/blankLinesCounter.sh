#!/usr/bin/env bash

c=0
while read line; do
	[ -z $line ] && c=$((c+1))
done < $1

echo "La cantidad de lineas en blanco es: $c"
