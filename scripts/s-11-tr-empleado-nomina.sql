--@Autor(es):       Alejandro Barreiro Valdez y Jessica Zepeda Baeza
--@Fecha creación:  03/06/2022
--@Descripción:     Trigger que crea un empleado_nomina por cada nomina

create or replace trigger trg_empleado_nomina
	after insert on nomina
	for each row

	declare
		v_nomina_id nomina.nomina_id%type;
		v_empleado_nomina_id empleado_nomina.empleado_nomina_id%type;
		cursor cur_empleado_id is 
			select empleado_id from empleado where actividad = '1';
	begin
		v_nomina_id := :new.nomina_id;
		for e in cur_empleado_id loop
			v_empleado_nomina_id := empleado_nomina_seq.nextval;
			insert into empleado_nomina(empleado_nomina_id,importe, 
				empleado_id,nomina_id)
			values (v_empleado_nomina_id,0,e.empleado_id,v_nomina_id);
		end loop;
	end;
/
show errors