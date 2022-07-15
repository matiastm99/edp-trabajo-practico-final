# edp-trabajo-practico-final

## **Trabajo práctico final para la materia “Entorno de programación” – TUIA**

El trabajo consiste en una serie de scripts (en bash) para análisis de texto. A continuación se detallan las funcionalidades de cada script:

1. **statsWords.sh**: Indicador de longitud de palabras (la más larga, las más corta y el promedio de longitud).
2. **statsUsageWords.sh**: Indicador de uso de palabras. Se muestran las 10 palabras más utilizadas, en orden descendente. Solo trabaja con palabras que estén compuestas por, mínimo, 4 letras.
3. **findNames.sh**: Identificador de nombres propios, independientemente si lo sea o no. Trabaja con el siguiente formato: Xxxxxx.
4. **statsSentences.sh**: Indicador de longitud de oraciones (la más larga, la más corta y el promedio de longitud)
5. **blankLinesCounter.sh**: Contador de lineas en blanco.

Para utilizar los scripts se debe iniciar el menu de la siguiente manera:
bash menu.sh
Se preguntara la ubicacion del archivo de texto a utilizar, luego se desplegara el menu de opciones. Introducir el numero que corresponda a la app deseada.

Ejemplo de ejecucion:

$ bash menu.sh

Introduza la ubicacion del texto

*/home/usuario/directorio/archivo_de_texto.txt*

Que app desea usar?
1) statsWords
2) statsUsageWords
3) findNames
4) statsSentences
5) blankLinesCounter
6) SALIR

Elija> *introducimos el numero correspondiente*

