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
