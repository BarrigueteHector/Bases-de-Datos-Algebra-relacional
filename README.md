# Bases de Datos: Algebra relacional

Definición
--------------------------------------------------------------------------------------------------------------------------------------------------------
Son operaciones para manipular relacionas. El resultado se considera como una consulta.

Antecedentes
--------------------------------------------------------------------------------------------------------------------------------------------------------
[DQL](https://github.com/BarrigueteHector/Bases-de-Datos-DQL): **SELECT**.

[JOIN](https://github.com/BarrigueteHector/Bases-de-Datos-JOIN-Parte-1): **LEFT JOIN**, **RIGHT JOIN**, **FULL JOIN** e **INNER JOIN**. Son otra forma de realizar consultas con resultados parecidos, pero que no son iguales. ***SOLO APLICA PARA CIERTAS OPERACIONES.*** 

***REVISAR NOTA #2***

Desarrollo
--------------------------------------------------------------------------------------------------------------------------------------------------------
Estos operadores funcionan como un tipo de consulta, pero no modifican las tablas utilizadas, ni crea neuvas tablas. 

Son cuatro operaciones y son las siguientes:
1. **Selección**: Son las tablas que vamos a utilizar y las condiciones que se deben de cumplir en los registros. 
De forma escrita se representa por el símbolo sigma, arriba de este (como una potencia) se coloca(n) la(s) tabla(s) que vamos a utilizar y abajo del símbolo (como un subindice) se coloca(n) la(s) tabla(condiciones).
2. **Proyección**: Son ciertos atributos (columnas) que vamos a mostrar. 
De forma escrita se representa por el símbolo pi, abajo de este (como subindice) se colocan los atributos que vamos a mostrar.
3. **Unión**: Es la unión de dos tablas. Ambas deben contar con el mismo número de atributos, cada columna debe ser del mimo tipo, tamaño y nombre.
4. **Diferencia**: Es la resta de dos tablas. Son los registros de una tabla A que no se encuentran en una tabla B.
5. **Producto cartesiano**: Combina todos los registros de una tabla con los de otra. 
6. **Intersección**: Son los registros en común que hay entre 2 tablas. 

Si se tiene conocimiento de probabilidad y/o estadistica, las operaciones de unión, diferencia e intersección, se entenderán facilmente.

Aunque parezca complicado de entender, algunos conceptos ya se han visto en repositorios anteriores.
    - Selección: Es una consulta con una condición. Puede ser para todas las columnas o solo algunas.
    - Proyección: Es una consulta sin condición, pero solo para ciertas columnas, no todas.

En el archivo [Ejemplo](https://github.com/BarrigueteHector/Bases-de-Datos-Algebra-relacional/blob/main/ejemplo.sql) se encuentra un ejemplo de como usar cada una de las operaciones. Mientras que en [Operaciones](https://github.com/BarrigueteHector/Bases-de-Datos-Algebra-relacional/blob/main/operaciones.sql) están las guías para saber como realizar cada instrucción.

NOTAS
--------------------------------------------------------------------------------------------------------------------------------------------------------
**NOTA #1**: Los repositorios **Bases de Datos** están hechos con base en el curso de Bases de Datos de la Facultad de Ingeniería de la UNAM. 

**NOTA #2**: Depende de nosotros y lo que querramos obtener, el utilizar un **JOIN** u operación. Son estructuras distintas y una no sustituye a la otra.
