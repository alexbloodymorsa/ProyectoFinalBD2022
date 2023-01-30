--@Autor(es):       Alejandro Barreiro y Jessica Zepeda
--@Fecha creación:  03/06/2022
--@Descripción:     Prueba trigger para actualizar importe 

set serveroutput on
Prompt Probando trigger actualización de importe
Prompt Se inserta una deducción para empleado 3

declare 
  v_importe empleado_nomina.importe%type;
  v_res number;

begin
  -- Prueba para modificar con D
  select importe into v_res 
  from empleado_nomina
  where empleado_nomina_id = 3;

  v_res := v_res - 3178.54;
  
  insert into empleado_nomina_concepto(empleado_nomina_concepto_id,
    importe,empleado_nomina_id,concepto_pago_id)
    values (empleado_nomina_concepto_seq.nextval,3178.54,3,6);

  select importe into v_importe 
  from empleado_nomina
  where empleado_nomina_id = 3;

  if v_res = v_importe then
    dbms_output.put_line('Valor importe:' || v_importe);
    dbms_output.put_line('Prueba exitosa.');
  else 
    dbms_output.put_line('Valor importe:' || v_importe);
    dbms_output.put_line('Prueba no exitosa.');
  end if;

  --Prueba para modificar con P
  select importe into v_res 
  from empleado_nomina
  where empleado_nomina_id = 11;

  v_res := v_res + 4560.54;
  
  insert into empleado_nomina_concepto(empleado_nomina_concepto_id,
    importe,empleado_nomina_id,concepto_pago_id)
    values (empleado_nomina_concepto_seq.nextval,4560.54,11,3);

  select importe into v_importe 
  from empleado_nomina
  where empleado_nomina_id = 11;

  if v_res = v_importe then
    dbms_output.put_line('Valor importe:' || v_importe);
    dbms_output.put_line('Prueba exitosa.');
  else 
    dbms_output.put_line('Valor importe:' || v_importe);
    dbms_output.put_line('Prueba no exitosa.');
  end if;

  --Prueba para eliminar con D
  select importe into v_res 
  from empleado_nomina_concepto
  where empleado_nomina_concepto_id = 16;
  
  delete from
  empleado_nomina_concepto 
  where empleado_nomina_concepto_id = 17;

  select importe into v_importe 
  from empleado_nomina
  where empleado_nomina_id = 2;

  if v_res = v_importe then
    dbms_output.put_line('Valor importe:' || v_importe);
    dbms_output.put_line('Prueba exitosa.');
  else 
    dbms_output.put_line('Valor importe:' || v_importe);
    dbms_output.put_line('Prueba no exitosa.');
  end if;

  --Prueba de error
  insert into empleado_nomina_concepto(empleado_nomina_concepto_id,
    importe,empleado_nomina_id,concepto_pago_id)
    values (empleado_nomina_concepto_seq.nextval,1000000,3,6);
  exception
    when others then
      dbms_output.put_line('Prueba exitosa. Se levanta el error por '
      ||'importe negativo.');

end;
/
rollback;
show errors

