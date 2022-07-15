#!/usr/bin/env bash

function filtrador_de_palabras {
    PALABRAS_FILTRADAS=()
    for PALABRA in $(cat "$1"); do
        if [ ${#PALABRA} -lt 4 ]; then
            PALABRAS_FILTRADAS+=("$PALABRA")
        fi
    done < "$1"
}
filtrador_de_palabras "$1"
echo "${PALABRAS_FILTRADAS[@]}" > stopwords.txt

grep -oE '[[:alpha:]]+' "$1" | grep -v -w -f stopwords.txt | sort -f | uniq -ic | sort -nr | head -10

