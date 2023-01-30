--@Autor(es):       Alejandro Barreiro Valdez y Jessica Zepeda Baeza
--@Fecha creación:  03/06/2022
--@Descripción:     Tablas externas

prompt Conectando como sys
connect sys as sysdba 

prompt creando directorio tmp_dir
create or replace directory tmp_dir as '/tmp/proyecto';

grant read, write on directory tmp_dir to bz_proy_admin;

prompt Contectando con usuario bz_proy_admin para crear la tabla externa
connect bz_proy_admin/proyecto
show user
prompt creando tabla externa inflacion
create table inflacion_ext (
  anio        number(4,0),
  mes			number(2,0),
  quincena    number(2,0),
  variacion   number(3,2)
)
organization external (
  type oracle_loader
  default directory tmp_dir
  access parameters (
    records delimited by newline
    badfile tmp_dir:'inflacion_ext_bad.log'
    logfile tmp_dir:'inflacion_ext.log'
    fields terminated by ','
    lrtrim
    missing field values are null 
    (
      anio, mes, quincena, variacion
    )
  )
  location ('inflacion_ext.csv')
)
reject limit unlimited;

prompt creando tabla externa entidad curp
create table entidad_ext (
    entidad_id      number(2,0),
    clave			varchar2(2),
    nombre          varchar2(20)
)
organization external (
    --En oracle existen 2 tipos de drivers para parsear el archivo:
    -- oracle_loader  y oracle_datapump
    type oracle_loader
    default directory tmp_dir
    access parameters (
        records delimited by newline
        badfile tmp_dir:'entidades_ext_bad.log'
        logfile tmp_dir:'entidades_ext.log'
        fields terminated by ','
        lrtrim
        missing field values are null 
        (
        	entidad_id,clave,nombre
        )
    )
    location ('entidades_ext.csv')
)
reject limit unlimited;


prompt creando el directorio /tmp/proyecto en caso de no existir
!mkdir -p /tmp/proyecto


prompt copiando el archivo csv a /tmp/proyecto
!cp inflacion_ext.csv /tmp/proyecto
!cp entidades_ext.csv /tmp/proyecto

prompt cambiando permisos
!chmod 777 /tmp/proyecto