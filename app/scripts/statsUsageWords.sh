#!/usr/bin/env bash

function filtrador_de_palabras {
    PALABRAS_FILTRADAS=()
    for PALABRA in $(cat $1); do
        if [ ${#PALABRA} -lt 4 ]; then
            PALABRAS_FILTRADAS+=("$PALABRA")
        fi
    done < $1
}
filtrador_de_palabras $1
printf '%s\n' "${PALABRAS_FILTRADAS[@]}" > stopwords

echo "Esta son las 10 palabras (compuestas por, minimo, 4 letras) mas utilizadas en el texto:"
grep -oE '[[:alpha:]]+' $1 | grep -vf stopwords | sort -f | uniq -ic | sort -nr | head -10
