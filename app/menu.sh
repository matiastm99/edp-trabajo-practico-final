#!/usr/bin/env bash

echo "Introduzca la ubicacion del texto"
read ubicacion_texto
TEXTO=$ubicacion_texto

while true; do
	echo ""
	PS3='Elija> '
	echo "Que app desea usar?"
	opciones=("statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter" "SALIR")
	select opcion in "${opciones[@]}"; do
	case $opcion in
		"statsWords")
			./scripts/statsWords.sh $TEXTO
			break ;;
		"statsUsageWords")
			./scripts/statsUsageWords.sh $TEXTO
			break ;;
		"findNames")
			./scripts/findNames.sh $TEXTO
			break ;;
		"statsSentences")
			./scripts/statsSentences.sh $TEXTO
			break ;;
		"blankLinesCounter")
			./scripts/blankLinesCounter.sh $TEXTO
			break ;;
		"SALIR")
			break 2;;
		*) echo "La opcion $REPLY no es valida";;
	esac
	done
done
