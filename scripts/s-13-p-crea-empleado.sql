--@Autor(es):       Alejandro Barreiro y Jessica Zepeda
--@Fecha creación:  03/06/2022
--@Descripción:     Creación de procedimiento para crear estudiante.

create or replace procedure p_crea_empleado(
  v_empleado_id out number,
  v_nombre in varchar2,
  v_ap_paterno in varchar2,
  v_ap_materno in varchar2,
  v_genero in varchar2,
  v_entidad in varchar2,
  v_clave_unica in varchar2,
  v_rfc in varchar2,
  v_fecha_nacimiento in date,
  v_actividad in number,
  v_tipo in varchar2,
  v_fecha_puesto in date,
  v_puesto_id in number,
  v_fecha_inicio in date,
  v_nivel_empleado_id in number,
  v_proyecto_id in number,
  v_empleado_contrato_id in number,
  v_universidad in varchar2,
  v_carrera  in varchar2,
  v_fecha_titulacion in date,
  v_promedio in number) is 

  v_curp varchar2(18);
begin
  select empleado_seq.nextval into v_empleado_id
  from dual;

  v_curp := curp(v_nombre,v_ap_paterno,v_ap_materno,v_fecha_nacimiento,
    v_genero,v_entidad,v_clave_unica);

  insert into empleado(empleado_id,nombre,ap_paterno,ap_materno,curp,rfc,
    fecha_nacimiento,actividad,tipo,fecha_puesto,puesto_id)
  values(v_empleado_id,v_nombre,v_ap_paterno,v_ap_materno,v_curp,v_rfc,
    v_fecha_nacimiento,v_actividad,v_tipo,v_fecha_puesto,v_puesto_id);

  if v_tipo = 'S' then
    insert into empleado_de_base
      (empleado_id,fecha_inicio,protesta,nivel_empleado_id)
    values 
      (v_empleado_id,v_fecha_inicio,empty_blob(),v_nivel_empleado_id);

  elsif v_tipo = 'H' then
    insert into empleado_por_honorarios
      (empleado_id,proyecto_id,empleado_contrato_id) 
    values 
      (v_empleado_id, v_proyecto_id, v_empleado_contrato_id);

  elsif v_tipo = 'B' then
    insert into becario
      (empleado_id,universidad,carrera,fecha_titulacion,promedio)
    values
      (v_empleado_id, v_universidad, v_carrera, 
      v_fecha_titulacion, v_promedio);

  else
    raise_application_error(-20001,'Tipo de empleado no valido.');

  end if;
  
end;
/
show errors
