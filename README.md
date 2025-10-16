# Quiz Matemático (Bash)

Pequeño conjunto de scripts Bash que implementan un quiz de operaciones aritméticas. Cada tipo de reto está en su propio script.

Archivos:
- `quiz.sh` - menú principal y control de puntaje
- `lib.sh` - funciones auxiliares
- `sum.sh` - reto de suma (términos 0-100)
- `sub.sh` - reto de resta (términos 0-100)
- `mul.sh` - reto de multiplicación (factor1 0-100, factor2 0-10)
- `div.sh` - reto de división (resultado entero)

Hacer ejecutables:

```bash
chmod +x *.sh
```

Ejecutar el quiz:

```bash
./quiz.sh
```

Notas:
- Las respuestas deben ser enteros.
- División siempre genera problemas con resultado entero (dividendo = divisor * cociente).
- La resta, siempre dara un numero positivo

Opción 1: Problemas de suma -> Va a escoger 2 números al azar entre 0-100. Pregunta ¿Cuánto es x+y? Tiene 3 intentos, si no acertó, le muestra la respuesta correcta
Opción 2: Problemas de resta -> Escoge al azar dos números entre 0 y 100. Si el primer número es mayor que el  segundo, está bien. Si el primero es menor que el segundo, se intercambian para que el resultado sea positivo.
Opción 3: Problemas de multiplicación -> Primer factor 0-100 - Segundo factor de 0-10
Opción 4: Problemas de división -> Para que el resultado dé siempre entero, se eligen dos números entre 1 y 10 a y b. Se hace el producto a*b y se le llama DIVIDENDO,  y al número b se le llama DIVISOR. La pregunta será “Cuánto es DIVIDENDO / DIVISOR?”
Opción 9: Salir
