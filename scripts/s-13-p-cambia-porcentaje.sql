--@Autor(es):       Alejandro Barreiro y Jessica Zepeda
--@Fecha creación:  03/06/2022
--@Descripción:     Creación de procedimiento para cambiar porcentajes.

create or replace procedure p_cambia_porcentaje(
  v_beneficiario_id1 in number,
  v_porcentaje1 in number,
  v_beneficiario_id2 in number,
  v_porcentaje2 in number) is 

  v_empleado_id1 number;
  v_empleado_id2 number;
  v_count number;
begin 
	select empleado_id into v_empleado_id1 
  from beneficiario 
  where beneficiario_id = v_beneficiario_id1;
   
  select empleado_id into v_empleado_id2 
  from beneficiario 
  where beneficiario_id = v_beneficiario_id2;

	if (v_porcentaje1 + v_porcentaje2) <= 100  and 
		 (v_empleado_id1 = v_empleado_id2) then
		  
		update beneficiario
	  set porcentaje = v_porcentaje1
	  where beneficiario_id = v_beneficiario_id1;

		update beneficiario
	  set porcentaje = v_porcentaje2
	  where beneficiario_id = v_beneficiario_id2;
		
	else
    raise_application_error(-20002,'Porcentaje no valido o beneficiarios con'
     	|| ' empleado_id diferentes.');
  end if;
end;
/
show errors
