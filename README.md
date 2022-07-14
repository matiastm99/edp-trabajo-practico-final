# edp-trabajo-practico-final

## **Trabajo práctico final para la materia “Entorno de programación” – TUIA**

El trabajo consiste en una serie de scripts (en bash) para análisis de texto. A continuación se detallan las funcionalidades de cada script:

1. **statsWords**: Indicador de longitud de palabras (la mas larga, las mas corta y el promedio de longitud).
2. **statsUsageWords**: Indicador de uso de palabras. Se muestran las 10 palabras mas utilizadas, en orden descendente. Solo trabaja con palabras que estén compuestas por, mínimo, 4 letras.
3. **findNames**: Identificador de nombres propios, independientemente si lo sea o no. Trabaja con el siguiente formato: Xxxxxx.
4. **statsSentences**: Indicador de longitud de oraciones (la mas larga, la mas corta y el promedio de longitud)
5. **blankLinesCounter**: Contador de lineas en blanco.

Los scripts se utilizan de la siguiente manera:
bash *nombre_del_script* *nombre_del_texto*

Por ejemplo: bash findNames texto.txt
