-- ************ UNIÓN ************
-- Podemos hacer la unión de 2 tablas siempre y cuando tengan el mismo número de columnas, mismo apellido, tamaño y tipo.
-- Para hacer una unión de 2 tablas, se utiliza la función UNION.
SELECT * FROM <TABLE_A>
UNION  -- No se contemplan repeticiones de registros
SELECT * FROM <TABLA_B>;

SELECT * FROM <TABLE_A>
UNION ALL -- Se contemplan repeticiones de registros
SELECT * FROM <TABLA_B>;

-- ************ DIFERENCIA ************
-- Es la resta de dos tablas y obtendremos como resultado los registros de A que no están en B.
SELECT * FROM <TABLE_A>
MINUS
SELECT * FROM <TABLA_B>;

-- El orden es importante, ya que si primero se coloca la tabla B y luego la A, obtendremos los registros de B que no están en A.

-- ************ PRODUCTO CARTESIANO ************
-- Es la multiplicación de dos tablas y obtendremos la relacion de todos los registros de A con los de B.
SELECT * FROM <TABLE_A> , <TABLE_B>;
-- Se representa con una coma.

-- ************ INTERSECCIÓN ************
-- Son los registros que A y B comparten.
SELECT * FROM <TABLE_A>
INTERSECT
SELECT * FROM <TABLA_B>;