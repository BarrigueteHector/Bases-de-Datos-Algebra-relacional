SQL> CREATE TABLE TRABAJADOR(
  2  ID NUMBER(5),
  3  NOMBRE VARCHAR(20),
  4  APELLIDO VARCHAR(20)
  5  );

Tabla creada.

SQL> INSERT INTO TRABAJADOR VALUES(10311,'Adriana','Abreu');

1 fila creada.

SQL> INSERT INTO TRABAJADOR VALUES(10312,'Eduardo','Galicia');

1 fila creada.

SQL> INSERT INTO TRABAJADOR VALUES(10313,'Izquierdo','Alvarado');

1 fila creada.

SQL> INSERT INTO TRABAJADOR VALUES(10314,'Jaqueline','Pi�a');

1 fila creada.

SQL> INSERT INTO TRABAJADOR VALUES(10315,'Dafne','Santos');

1 fila creada.

SQL> 
SQL> CREATE TABLE ALUMNO(
  2  ID NUMBER(5),
  3  NOMBRE VARCHAR(20),
  4  APELLIDO VARCHAR(20)
  5  );

Tabla creada.

SQL> INSERT INTO ALUMNO VALUES(10311,'Adriana','Abreu');

1 fila creada.

SQL> INSERT INTO ALUMNO VALUES(10316,'Juan','Perez');

1 fila creada.

SQL> INSERT INTO ALUMNO VALUES(10313,'Izquierdo','Alvarado');

1 fila creada.

SQL> INSERT INTO ALUMNO VALUES(10315,'Delila','Paz');

1 fila creada.

SQL> 
SQL> DESCRIBE ALUMNO;
 Nombre                                                      �Nulo?   Tipo
 ----------------------------------------------------------- -------- ----------------------------------------
 ID                                                                   NUMBER(5)
 NOMBRE                                                               VARCHAR2(20)
 APELLIDO                                                             VARCHAR2(20)

SQL> DESCRIBE TRABAJADOR;
 Nombre                                                      �Nulo?   Tipo
 ----------------------------------------------------------- -------- ----------------------------------------
 ID                                                                   NUMBER(5)
 NOMBRE                                                               VARCHAR2(20)
 APELLIDO                                                             VARCHAR2(20)

SQL> -- Como vemos, las tablas tienen los mismos atributos y cada uno es del mismo tipo, tama�o y nombre.
SQL> 
SQL> -- Vemos todos los registros de cada las tablas
SQL> SELECT * FROM TRABAJADOR;

        ID NOMBRE               APELLIDO                                                                      
---------- -------------------- --------------------                                                          
     10311 Adriana              Abreu                                                                         
     10312 Eduardo              Galicia                                                                       
     10313 Izquierdo            Alvarado                                                                      
     10314 Jaqueline            Pi�a                                                                          
     10315 Dafne                Santos                                                                        

SQL> SELECT * FROM ALUMNO;

        ID NOMBRE               APELLIDO                                                                      
---------- -------------------- --------------------                                                          
     10311 Adriana              Abreu                                                                         
     10316 Juan                 Perez                                                                         
     10313 Izquierdo            Alvarado                                                                      
     10315 Delila               Paz                                                                           

SQL> 
SQL> -- ************ SELECCI�N ************
SQL> -- Una consulta con condici�n
SQL> SELECT NOMBRE, APELLIDO FROM TRABAJADOR
  2  WHERE ID > 10313;

NOMBRE               APELLIDO                                                                                 
-------------------- --------------------                                                                     
Jaqueline            Pi�a                                                                                     
Dafne                Santos                                                                                   

SQL> 
SQL> SELECT NOMBRE, APELLIDO FROM TRABAJADOR
  2  WHERE APELLIDO = 'Santos';

NOMBRE               APELLIDO                                                                                 
-------------------- --------------------                                                                     
Dafne                Santos                                                                                   

SQL> 
SQL> -- ************ PROYECCI�N ************
SQL> -- Una consulta sin condici�n y solo de ciertas columnas
SQL> SELECT NOMBRE, APELLIDO FROM TRABAJADOR;

NOMBRE               APELLIDO                                                                                 
-------------------- --------------------                                                                     
Adriana              Abreu                                                                                    
Eduardo              Galicia                                                                                  
Izquierdo            Alvarado                                                                                 
Jaqueline            Pi�a                                                                                     
Dafne                Santos                                                                                   

SQL> 
SQL> SELECT NOMBRE, APELLIDO FROM ALUMNO;

NOMBRE               APELLIDO                                                                                 
-------------------- --------------------                                                                     
Adriana              Abreu                                                                                    
Juan                 Perez                                                                                    
Izquierdo            Alvarado                                                                                 
Delila               Paz                                                                                      

SQL> 
SQL> -- ************ UNION ************
SQL> -- Unimos las dos tablas y tenemos una sola tabla (que solo vemos en la consulta) con todos los registros de ambas tablas (se omiten los repetidos)
SQL> SELECT * FROM TRABAJADOR
  2  UNION
  3  SELECT * FROM ALUMNO;

        ID NOMBRE               APELLIDO                                                                      
---------- -------------------- --------------------                                                          
     10311 Adriana              Abreu                                                                         
     10312 Eduardo              Galicia                                                                       
     10313 Izquierdo            Alvarado                                                                      
     10314 Jaqueline            Pi�a                                                                          
     10315 Dafne                Santos                                                                        
     10315 Delila               Paz                                                                           
     10316 Juan                 Perez                                                                         

7 filas seleccionadas.

SQL> 
SQL> -- Si queremos ver los que estan repetidos, a�adimos ALL
SQL> SELECT * FROM TRABAJADOR
  2  UNION ALL
  3  SELECT * FROM ALUMNO;

        ID NOMBRE               APELLIDO                                                                      
---------- -------------------- --------------------                                                          
     10311 Adriana              Abreu                                                                         
     10312 Eduardo              Galicia                                                                       
     10313 Izquierdo            Alvarado                                                                      
     10314 Jaqueline            Pi�a                                                                          
     10315 Dafne                Santos                                                                        
     10311 Adriana              Abreu                                                                         
     10316 Juan                 Perez                                                                         
     10313 Izquierdo            Alvarado                                                                      
     10315 Delila               Paz                                                                           

9 filas seleccionadas.

SQL> 
SQL> -- ************ DIFERENCIA ************
SQL> -- Registros de TRABAJADOR que no esten en ALUMNO
SQL> SELECT NOMBRE, APELLIDO FROM TRABAJADOR
  2  MINUS
  3  SELECT NOMBRE, APELLIDO FROM ALUMNO;

NOMBRE               APELLIDO                                                                                 
-------------------- --------------------                                                                     
Dafne                Santos                                                                                   
Eduardo              Galicia                                                                                  
Jaqueline            Pi�a                                                                                     

SQL> 
SQL> -- Si volvemos a revisar todos los registros de TRABAJADOR Y ALUMNO, VEREMOS QUE DICHOS REGISTROS DE TRABAJADOR NO SE ENCUENTRAN EN ALUMNO
SQL> SELECT * FROM TRABAJADOR;

        ID NOMBRE               APELLIDO                                                                      
---------- -------------------- --------------------                                                          
     10311 Adriana              Abreu                                                                         
     10312 Eduardo              Galicia                                                                       
     10313 Izquierdo            Alvarado                                                                      
     10314 Jaqueline            Pi�a                                                                          
     10315 Dafne                Santos                                                                        

SQL> SELECT * FROM ALUMNO;

        ID NOMBRE               APELLIDO                                                                      
---------- -------------------- --------------------                                                          
     10311 Adriana              Abreu                                                                         
     10316 Juan                 Perez                                                                         
     10313 Izquierdo            Alvarado                                                                      
     10315 Delila               Paz                                                                           

SQL> 
SQL> -- ************ PRODUCTO CARTESIANO ************
SQL> -- Relacion de todos los registros de TRABAJADOR con todos los de ALUMNO
SQL> SELECT * FROM TRABAJADOR, ALUMNO;

        ID NOMBRE               APELLIDO                     ID NOMBRE               APELLIDO                 
---------- -------------------- -------------------- ---------- -------------------- --------------------     
     10311 Adriana              Abreu                     10311 Adriana              Abreu                    
     10312 Eduardo              Galicia                   10311 Adriana              Abreu                    
     10313 Izquierdo            Alvarado                  10311 Adriana              Abreu                    
     10314 Jaqueline            Pi�a                      10311 Adriana              Abreu                    
     10315 Dafne                Santos                    10311 Adriana              Abreu                    
     10311 Adriana              Abreu                     10316 Juan                 Perez                    
     10312 Eduardo              Galicia                   10316 Juan                 Perez                    
     10313 Izquierdo            Alvarado                  10316 Juan                 Perez                    
     10314 Jaqueline            Pi�a                      10316 Juan                 Perez                    
     10315 Dafne                Santos                    10316 Juan                 Perez                    
     10311 Adriana              Abreu                     10313 Izquierdo            Alvarado                 
     10312 Eduardo              Galicia                   10313 Izquierdo            Alvarado                 
     10313 Izquierdo            Alvarado                  10313 Izquierdo            Alvarado                 
     10314 Jaqueline            Pi�a                      10313 Izquierdo            Alvarado                 
     10315 Dafne                Santos                    10313 Izquierdo            Alvarado                 
     10311 Adriana              Abreu                     10315 Delila               Paz                      
     10312 Eduardo              Galicia                   10315 Delila               Paz                      
     10313 Izquierdo            Alvarado                  10315 Delila               Paz                      
     10314 Jaqueline            Pi�a                      10315 Delila               Paz                      
     10315 Dafne                Santos                    10315 Delila               Paz                      

20 filas seleccionadas.

SQL> -- Considero que aqui se entiende que es lo que ocurre realmente. Los primeros ID, NOMBRE y APELLIDO corresponden a la tabla TRABAJADOR, los otros a la de ALUMNO. Cada registro de ALUMNO se relaciona con cada uno de TRABAJADOR.
SQL> 
SQL> -- ************ INTERSECCI�N ************
SQL> -- Los registros de que TRABAJADOR y ALUMNO comparten
SQL> SELECT NOMBRE, APELLIDO FROM TRABAJADOR
  2  INTERSECT
  3  SELECT NOMBRE, APELLIDO FROM ALUMNO;

NOMBRE               APELLIDO                                                                                 
-------------------- --------------------                                                                     
Adriana              Abreu                                                                                    
Izquierdo            Alvarado                                                                                 