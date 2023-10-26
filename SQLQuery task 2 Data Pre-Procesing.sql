/* Consulta todos los datos en la tabla y los muestra sin ordenar.*/
Select * from INE_DIS_2020;

/* Consulta de los estados (NOM_ENT) con PCON_DISC en un rango espec�fico.
selecciona el nombre de los estados (columna NOM_ENT) de la tabla "INE_DIS_2020" 
donde el valor de la columna PCON_DISC est� en el rango entre 18500 y 30500. */

SELECT [NOM_ENT ]
FROM INE_DIS_2020
WHERE PCON_DISC BETWEEN 18500 AND 30500;

/* Actualizaciones de nombres de entidades */
UPDATE INE_DIS_2020
SET [NOM_ENT ] = 'Ciudad de M�xico'
WHERE [NOM_ENT ] like 'Ciudad de M%';

UPDATE INE_DIS_2020
SET [NOM_ENT ] = 'Michoac�n de Ocampo'
WHERE [NOM_ENT ] like 'Michoac%';

UPDATE INE_DIS_2020
SET [NOM_ENT ] = 'M�xico'
WHERE [NOM_ENT ] like 'M%xico';

UPDATE INE_DIS_2020
SET [NOM_ENT ] = 'Nuevo Le�n'
WHERE [NOM_ENT ] like 'Nuevo Le%n';

UPDATE INE_DIS_2020
SET [NOM_ENT ] = 'Quer�taro'
WHERE [NOM_ENT ] like 'Quer%';

UPDATE INE_DIS_2020
SET [NOM_ENT ] = 'Yucat�n'
WHERE [NOM_ENT ] like 'Yucat%n';

UPDATE INE_DIS_2020
SET [NOM_ENT ] = 'San Luis Potos�'
WHERE [NOM_ENT ] like 'San Luis%';

/* Actualizaci�n de la columna COMPLEJIDA: 
establece el valor de la columna "COMPLEJIDA" 
en 'Concentraci�n Media' para las filas donde la columna "COMPLEJIDA" coincide con 'Concentraci%n Media'. */
UPDATE INE_DIS_2020
SET COMPLEJIDA = 'Concentraci�n Media'
WHERE COMPLEJIDA like 'Concentraci%n Media';


/* Consulta de todos los datos en la tabla ordenados por COMPLEJIDA*/
Select *
	from INE_DIS_2020
	ORDER BY COMPLEJIDA;

/* Generaci�n de consultas DISTINCT para cada valor de COMPLEJIDA */
	Select DISTINCT  CONCAT('WHERE COMPLEJIDA = ''', COMPLEJIDA, ''';')
	from INE_DIS_2020;

	/*Create Dummies in the column "COMPLEJIDA"*/
UPDATE INE_DIS_2020 SET ALT_CON_1 = 0, ALT_CONT_2 = 0,CON_MED = 0, CON1 = 0, CON2 = 0, DIS1 = 0, DIS2 = 0, M_DIS1 = 0, M_DIS2= 0;

	/* Estas actualizaciones establecen el valor de diferentes columnas (ALT_CON_1, ALT_CON_2, etc.) 
	en 1 para las filas donde la columna "COMPLEJIDA" coincide con ciertos valores. */
UPDATE INE_DIS_2020
SET ALT_CON_1 = 1
WHERE COMPLEJIDA = 'Altamente Concentrado 1';
UPDATE INE_DIS_2020
SET ALT_CONT_2 = 1
WHERE COMPLEJIDA = 'Altamente Concentrado 2';
UPDATE INE_DIS_2020
SET CON_MED = 1
WHERE COMPLEJIDA = 'Concentraci�n Media';
UPDATE INE_DIS_2020
SET CON1 = 1
WHERE COMPLEJIDA = 'Concentrado 1';
UPDATE INE_DIS_2020
SET CON2 = 1
WHERE COMPLEJIDA = 'Concentrado 2';
UPDATE INE_DIS_2020
SET DIS1 = 1
WHERE COMPLEJIDA = 'Disperso 1';
UPDATE INE_DIS_2020
SET DIS2 = 1
WHERE COMPLEJIDA = 'Disperso 2';
UPDATE INE_DIS_2020
SET M_DIS1 = 1
WHERE COMPLEJIDA = 'Muy Disperso 1';
UPDATE INE_DIS_2020
SET M_DIS2 = 1
WHERE COMPLEJIDA = 'Muy Disperso 2';

/* Estas actualizaciones establecen el valor de diferentes columnas (ALT_CON_1, ALT_CON_2, etc.) en 1 para las filas donde la columna "COMPLEJIDA" coincide con ciertos valores. 
 Actualizaciones para diferentes valores de "COMPLEJIDA". 
 Consulta DISTINCT de los valores �nicos en la columna COMPLEJIDA */

SELECT DISTINCT COMPLEJIDA FROM INE_DIS_2020

/* Alteraci�n de la tabla para agregar columnas: */

ALTER TABLE INE_DIS_2020
ADD ALT_CON_1 INT, ALT_CON_2 INT, CON_MED INT, CON1 INT, CON2 INT, DIS1 INT, DIS2 INT, MDIS_1 INT, MDIS_2 INT;