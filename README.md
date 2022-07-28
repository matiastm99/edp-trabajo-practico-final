# edp-trabajo-practico-final

## **Trabajo práctico final para la materia “Entorno de programación” – TUIA**

El trabajo consiste en una serie de scripts (en bash) para análisis de texto. A continuación se detallan las funcionalidades de cada script:

1. **statsWords.sh**: Indicador de longitud de palabras (la más larga, las más corta y el promedio de longitud).
2. **statsUsageWords.sh**: Indicador de uso de palabras. Se muestran las 10 palabras más utilizadas, en orden descendente. Solo trabaja con palabras que estén compuestas por, mínimo, 4 letras.
3. **findNames.sh**: Identificador de nombres propios, independientemente si lo sea o no. Trabaja con el siguiente formato: Xxxxxx.
4. **statsSentences.sh**: Indicador de longitud de oraciones (la más larga, la más corta y el promedio de longitud)
5. **blankLinesCounter.sh**: Contador de lineas en blanco.

Para correrlo en Docker:

1. docker build -t *nombre imagen* *PATH del Dockerfile*
2. docker run -it --rm --name *nombre contenedor* nombre imagen
3. cd home/

Las instrucciones de ejecucion se encuentran en /app/instructivo
