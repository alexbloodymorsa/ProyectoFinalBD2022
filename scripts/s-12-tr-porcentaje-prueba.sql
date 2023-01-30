--@Autor(es):       Alejandro Barreiro y Jessica Zepeda
--@Fecha creación:  03/06/2022
--@Descripción:     Prueba trigger porcentaje

set serveroutput on

declare
  v_count number;
  v_b_id number;
  v_e_id number;

begin
  begin
    dbms_output.put_line(chr(10) || 'Probando eliminar con un empleado_id ya '
    	|| 'registrado y porcentaje 40.');
    dbms_output.put_line('Cambiando los porcentajes de id 3009, 3015');
    p_cambia_porcentaje(3009, 60, 3015, 40);
    delete from beneficiario where beneficiario_id = 3015;

    exception
    when others then
    	dbms_output.put_line(sqlerrm); 
      dbms_output.put_line('Prueba exitosa, se lanzó el error ' ||
        'y no se eliminó beneficiario');
  end;
  
  
	dbms_output.put_line(chr(10) || 'Probando eliminar con un empleado_id ya ' 
		|| 'registrado y porcentaje 0.');
	dbms_output.put_line('Cambiando el porcentaje de id 3013');
	p_cambia_porcentaje(3013, 0, 3014, 40);
	delete from beneficiario where beneficiario_id = 3013;

	select count(*) into v_count
	from beneficiario
	where beneficiario_id = 3013;
		
	if v_count = 0 then 
		dbms_output.put_line('Prueba exitosa. No se encontraron registros.');
	else 
		dbms_output.put_line('Prueba fallida.');
	end if;
  
  
  	
  dbms_output.put_line(chr(10) || 'Probando insertar con empleado_id no ' ||
  'registrado y porcentaje 100.');
   p_crea_empleado(v_e_id,'Julián','Polsen','Strusel','H','Chihuahua',
    'A2','POSJ970206SCS',to_date('06/02/1997','dd/mm/yyyy'),1,'S',
    to_date('01/09/2023', 'dd/mm/yyyy'),2,
    to_date('02/08/2016', 'dd/mm/yyyy'),5,
    null, null,
    null, null, null, null);
  v_b_id := beneficiario_seq.nextval;
  insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
    porcentaje,parentesco,empleado_id)
    values (v_b_id,'Jaylen','Brown','Tatum',100,'Padre',v_e_id);
  
  select count(*) into v_count
  from beneficiario
  where beneficiario_id = v_b_id
  and nombre = 'Jaylen'
  and ap_paterno = 'Brown'
  and ap_materno = 'Tatum'
  and porcentaje = 100
  and parentesco = 'Padre'
  and empleado_id = v_e_id;
  
  if v_count > 0 then
    dbms_output.put_line('Prueba exitosa, se insertó el beneficiario.');
  else 
    dbms_output.put_line('Prueba fallida, no se insertó el beneficiario.');
  end if;



  dbms_output.put_line(chr(10) || 'Probando insertar con un empleado_id ya ' ||
  'registrado y porcentaje 0.');
  v_b_id := beneficiario_seq.nextval;
  insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
    porcentaje,parentesco,empleado_id)
    values (v_b_id,'Klay','Thompson','Curry',0,'Hijo',3);
  
  select count(*) into v_count
  from beneficiario
  where beneficiario_id = v_b_id
  and nombre = 'Klay'
  and ap_paterno = 'Thompson'
  and ap_materno = 'Curry'
  and porcentaje = 0
  and parentesco = 'Hijo'
  and empleado_id = 3;
  
  if v_count > 0 then
    dbms_output.put_line('Prueba exitosa, se insertó el beneficiario.');
  else 
    dbms_output.put_line('Prueba fallida.');
  end if;



  begin 
    dbms_output.put_line(chr(10) || 'Probando insertar con un empleado_id ya '
    || 'registrado y porcentaje 20.');
    v_b_id := beneficiario_seq.nextval;
    insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
      porcentaje,parentesco,empleado_id)
      values (v_b_id,'Robert','California','Wiggins',20,'Tio',10);

    exception
    when others then 
    	dbms_output.put_line(sqlerrm);
      dbms_output.put_line('Prueba exitosa, se lanzó el error ' ||
        'y no se insertó beneficiario');
  end;
  
  begin 
    dbms_output.put_line(chr(10) || 'Probando la función cambia_porcentaje ' ||
    'con beneficiarios con empelado_id diferentes.');
    dbms_output.put_line('Cambiando los porcentajes de id 3001, 3011');
  	p_cambia_porcentaje(3001, 50, 3011, 50);

    exception
    when others then 
    	dbms_output.put_line(sqlerrm);
      dbms_output.put_line('Prueba exitosa, se lanzó el error ' ||
        'y no se insertó beneficiario');
  end;

  dbms_output.put_line(chr(10) || 'Probando la función cambia_porcentaje con '
  || 'un porcentaje mayor a 100.');
  dbms_output.put_line('Cambiando los porcentajes de id 3009, 3015');
  p_cambia_porcentaje(3009, 100, 3015, 40);

  exception
    when others then
      dbms_output.put_line(sqlerrm);
      dbms_output.put_line('Prueba exitosa, se lanzó el error.');

end;
/
rollback;
show errors
