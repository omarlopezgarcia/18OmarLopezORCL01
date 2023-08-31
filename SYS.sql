/*LISTAR LOS TABLESPACES DE MI BD ORACLE*/
SELECT TABLESPACE_NAME, STATUS, CONTENTS
FROM USER_TABLESPACES;

/*ELIMINAR NUESTRO TABLESPACES*/
DROP TABLESPACE TBSGAMARK
INCLUDING CONTENTS AND DATAFILES CASCADE CONSTRAINTS;

/*CREAR TABLESPACE*/
CREATE TABLESPACE TBSGAMARK
DATAFILE 'tbsgamark.dbf'
SIZE 300M;

/*ACTIVAR EL PARÁMETRO _ORACLE_SCRIPT*/
ALTER SESSION SET "_oracle_script"= TRUE;

/*CREAR USUARIO GMARKET*/
CREATE USER gmarket
IDENTIFIED BY ORCL1234
DEFAULT TABLESPACE TBSGAMARK
TEMPORARY TABLESPACE TEMP
QUOTA UNLIMITED ON TBSGAMARK;

/*LISTAR USUARIOS DE LA BASE DE DATOS*/
SELECT * FROM DBA_USERS;

/*ASIGNANDO PERMISOS AL USUARIO*/
GRANT CREATE SESSION TO gmarket;
GRANT CREATE TABLE TO gmarket;
GRANT CREATE VIEW TO gmarket;
GRANT CREATE PROCEDURE TO gmarket;
GRANT CREATE TRIGGER TO gmarket;
GRANT CREATE SEQUENCE TO gmarket;
GRANT CREATE JOB TO gmarket;
GRANT UNLIMITED TABLESPACE TO gmarket;