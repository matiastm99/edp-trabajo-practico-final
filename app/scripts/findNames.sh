#!/usr/bin/env bash

NOMBRE='^[[:upper:]]'
for PALABRA in $(cat $1); do
	if [[ $PALABRA =~ $NOMBRE ]]; then
		echo $PALABRA
	fi
done < $1
