--@Autor(es):       Alejandro Barreiro Valdez y Jessica Zepeda Baeza
--@Fecha creación:  03/06/2022
--@Descripción:     Trigger que obtiene importe de empleado por nomina

create or replace trigger trg_importe_nomina_empleado
	after insert or update or delete of importe on empleado_nomina_concepto
	for each row
	declare
		v_empleado_nomina_id empleado_nomina.empleado_nomina_id%type;
		v_importe empleado_nomina_concepto.importe%type;
		v_concepto_tipo concepto_pago.tipo%type;
		v_nuevo_importe empleado_nomina.importe%type;
	begin
		case
			when inserting or updating then
				v_empleado_nomina_id := :new.empleado_nomina_id;
				v_importe := :new.importe;
				select tipo into v_concepto_tipo from concepto_pago 
				where concepto_pago_id = :new.concepto_pago_id;
					
				if v_concepto_tipo = 'D' then
					v_importe := v_importe * -1;
				end if;
			
			when deleting then
				v_empleado_nomina_id := :old.empleado_nomina_id;
				v_importe := :old.importe;
				select tipo into v_concepto_tipo from concepto_pago 
				where concepto_pago_id = :old.concepto_pago_id;
					
				if v_concepto_tipo = 'P' then
					v_importe := v_importe * -1;
				end if;
		end case;

		select importe into v_nuevo_importe from empleado_nomina
		where v_empleado_nomina_id = empleado_nomina_id; 
		
		if (v_nuevo_importe + v_importe) < 0 then
			raise_application_error(-20010,'Importe negativo al hacer 
      modificaciones.');
		else 
			update empleado_nomina
				set importe = v_importe + v_nuevo_importe
				where v_empleado_nomina_id = empleado_nomina_id;
		end if;
	end;
	/
show errors;