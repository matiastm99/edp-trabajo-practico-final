#!/usr/bin/env bash

echo "Introduzca la ubicacion del texto"
read texto
TEXTO=$texto
PS3='Elija> '
echo "Que app desea usar?"
opciones=("statsWords" "statsUsageWords" "findNames" "statsSentences" "blankLinesCounter" "SALIR")

select opcion in "${opciones[@]}"
do
	case $opcion in
		"statsWords")
			./scripts/statsWords.sh $TEXTO;;
		"statsUsageWords")
			./scripts/statsUsageWords.sh $TEXTO;;
		"findNames")
			./scripts/findNames.sh $TEXTO;;
		"statsSentences")
			./scripts/statsSentences.sh $TEXTO;;
		"blankLinesCounter")
			./scripts/blankLinesCounter.sh $TEXTO;;
		"SALIR")
			break ;;
	esac
done
