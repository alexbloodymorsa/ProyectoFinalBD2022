--@Autor(es):       Alejandro Barreiro y Jessica Zepeda
--@Fecha creación:  03/06/2022
--@Descripción:     Archivo principal.

connect sys/system as sysdba

prompt eliminando usuario en caso de existir
set serveroutput on

declare
  v_count number;
begin
  select count(*) into v_count
  from all_users
  where username = 'BZ_PROY_ADMIN';
  if v_count > 0 then
    dbms_output.put_line('Eliminando usuario');
    execute immediate 'drop user BZ_PROY_ADMIN cascade';
    execute immediate 'drop user BZ_PROY_INVITADO cascade';
    execute immediate 'drop role rol_admin';
    execute immediate 'drop role rol_invitado';
  end if;
end;
/

prompt Creando usuarios
@s-01-usuarios.sql

prompt Creando objetos
@s-02-entidades.sql

prompt Creando tablas temporales
@s-03-tablas-temporales.sql

prompt Creando tablas externas
@s-04-tablas-externas.sql

prompt Creando secuencias
@s-05-secuencias.sql

prompt Creando indices
@s-06-indices.sql

prompt Creando sinonimos
@s-07-sinonimos.sql

prompt Creando vistas
@s-08-vistas.sql

prompt Carga de datos
@s-09-carga-inicial.sql

-- prompt Consultas
-- @s-10-consultas.sql

prompt Creando triggers
@s-11-tr-empleado-nomina.sql
@s-11-tr-importe.sql
@s-11-tr-porcentaje.sql

prompt Creando funciones
@s-15-fx-find-cons-voc.sql
@s-15-fx-curp.sql
@s-15-fx-leer-pdf.sql

prompt Creando procedimientos
@s-13-p-cambia-porcentaje.sql
@s-13-p-crea-empleado.sql

-- Todas las pruebas
-- @s-12-tr-empleado-nomina-prueba.sql
-- @s-12-tr-importe-prueba.sql
-- @s-12-tr-porcentaje-prueba.sql
-- 12: p-cambia porcentaje

-- @s-14-p-crea-empleado-prueba.sql
-- 14: fx-curp y fx-find-cons-voc

-- @s-16-fx-leer-pdf-prueba.sql

commit;