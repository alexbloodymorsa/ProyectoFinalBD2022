--@Autor(es):       Alejandro Barreiro y Jessica Zepeda
--@Fecha creación:  03/06/2022
--@Descripción:     Prueba procedimiento para crear empleado.

set serveroutput on
Prompt Insertando un nuevo empleado

declare
  v_empleado_id empleado.empleado_id%type;
  v_count number;
begin
  p_crea_empleado(v_empleado_id,'Julián','Polsen','Strusel','H','Chihuahua',
    'A2','POSJ970206SCS',to_date('06/02/1997','dd/mm/yyyy'),1,'S',
    to_date('01/09/2023', 'dd/mm/yyyy'),2,
    to_date('02/08/2016', 'dd/mm/yyyy'),5,
    null, null,
    null, null, null, null);
  select count(*) into v_count 
  from empleado e, empleado_de_base eb
  where e.empleado_id = v_empleado_id
  and e.nombre = 'Julián'
  and e.ap_paterno = 'Polsen'
  and e.ap_materno = 'Strusel'
  and e.curp = 'POSJ970206HCHLTLA2'
  and e.rfc = 'POSJ970206SCS'
  and e.fecha_nacimiento = to_date('06/02/1997', 'dd/mm/yyyy')
  and e.actividad = 1
  and e.tipo = 'S'
  and eb.nivel_empleado_id = 5;
  if v_count > 0 then
    dbms_output.put_line('Prueba exitosa para empleado de base' ||
      ' con id: '||v_empleado_id);
  else 
    dbms_output.put_line('Prueba fallida para empleado de base' ||
      ' con id: '||v_empleado_id);
  end if;

  p_crea_empleado(v_empleado_id,'Tomasa','Alvarez','Rodríguez','M','Morelos',
    'A5','AART920305BS3',to_date('05/03/1992','dd/mm/yyyy'),1,'H',
    to_date('12/08/2020','dd/mm/yyyy'),10,
    null, null,
    40, 1,
    null, null, null, null);
  select count(*) into v_count 
  from empleado e, empleado_por_honorarios eh
  where e.empleado_id = v_empleado_id
  and e.nombre = 'Tomasa'
  and e.ap_paterno = 'Alvarez'
  and e.ap_materno = 'Rodríguez'
  and e.curp = 'AART920305MMSVDMA5'
  and e.rfc = 'AART920305BS3'
  and e.fecha_nacimiento = to_date('05/03/1992', 'dd/mm/yyyy')
  and e.actividad = 1
  and e.tipo = 'H'
  and eh.proyecto_id = 40;
  if v_count > 0 then
    dbms_output.put_line('Prueba exitosa para empleado por honorarios' ||
      ' con id: '||v_empleado_id);
  else 
    dbms_output.put_line('Prueba fallida para empleado por honorarios' ||
      ' con id: '||v_empleado_id);
  end if;

  p_crea_empleado(v_empleado_id,'Gilberto','Gil','Mendoza','H','Sonora','A8',
	  'GIMG900421ND1',to_date('21/04/1990','dd/mm/yyyy'),1,'B',
    to_date('05/11/2021','dd/mm/yyyy'),6,
    null, null,
    null, null,
    'Universidad Iberoamericana', 'Química', to_date('16/03/2023', 
    'dd/mm/yyyy'), 89.42);
  select count(*) into v_count 
  from empleado e, becario b
  where e.empleado_id = v_empleado_id
  and e.nombre = 'Gilberto'
  and e.ap_paterno = 'Gil'
  and e.ap_materno = 'Mendoza'
  and e.curp = 'GIMG900421HSRLNLA8'
  and e.rfc = 'GIMG900421ND1'
  and e.fecha_nacimiento = to_date('21/04/1990', 'dd/mm/yyyy')
  and e.actividad = 1
  and e.tipo = 'B'
  and b.promedio = 89.42;
  if v_count > 0 then
    dbms_output.put_line('Prueba exitosa para empleado becario' ||
      ' con id: '||v_empleado_id);
  else 
    dbms_output.put_line('Prueba fallida para empleado becario' ||
      ' con id: '||v_empleado_id);
  end if;

  p_crea_empleado(v_empleado_id,'Lourdes','Ramos','Pérez','M','Mexico','A1',
	'RAPL900421BS1',to_date('21/04/1990', 'dd/mm/yyyy'),1,'K',
  to_date('05/11/2021', 'dd/mm/yyyy'),6,
    null, null,
    null, null,
    'Universidad Iberoamericana', 'Química', to_date('16/03/2023', 
    'dd/mm/yyyy'), 89.42);
  exception
    when others then
      dbms_output.put_line('Prueba exitosa. Se levanta el error por '
      ||'tipo incorrecto.');
  
end;
/

rollback;
