--@Autor(es):       Alejandro Barreiro y Jessica Zepeda
--@Fecha creación:  03/06/2022
--@Descripción:     Prueba trigger que crea empleado_nomina.

set serveroutput on
Prompt Creando una nomina

declare
  v_num_empleados number;
  v_res number;
  v_en_id number;

begin
  select count(*) into v_res
  from empleado where empleado.actividad = '1';

  v_en_id := nomina_seq.nextval;
  
  insert into nomina(nomina_id,fecha_generacion,fecha_pago,importe_total,
    pagos_generados,pagos_no_cobrados,quincena_id)
    values (v_en_id,to_date('15/06/2022','dd/mm/yyyy'),
    to_date('17/06/2022','dd/mm/yyyy'),20381901.38,1182,45,42);
  
  select count(*) into v_num_empleados
  from empleado_nomina where nomina_id = v_en_id;

  if v_res = v_num_empleados then
    dbms_output.put_line('Prueba exitosa, se crearon ' 
      || v_num_empleados || ' registros en empleado_nomina.');
  else 
    dbms_output.put_line('Prueba fallida.');
  end if;
end;
/

rollback;
show errors
