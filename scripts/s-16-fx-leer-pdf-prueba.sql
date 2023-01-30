--@Autor(es):       Alejandro Barreiro Valdez y Jessica Zepeda Baeza
--@Fecha creación:  03/06/2022
--@Descripción:     Prueba de función que devuelve un pdf

set serveroutput on

declare
	v_count number;
	v_contrato_id number;
begin
	v_contrato_id := contrato_seq.nextval;
	insert into contrato(contrato_id,num_contrato,fecha_inicio,fecha_fin,pdf,
		empleado_id)
	values (v_contrato_id,1289,to_date('11/10/2021','dd/mm/yyyy')
		,to_date('11/01/2022','dd/mm/yyyy'),
		leer_pdf('practica01-BarreiroValdezAlejandro'),6);

	select count(*) into v_count
	from contrato 
	where contrato_id = v_contrato_id
	and num_contrato = 1289
	and fecha_inicio = to_date('11/10/2021','dd/mm/yyyy')
	and fecha_fin = to_date('11/01/2022','dd/mm/yyyy')
	and empleado_id = 6;

	if v_count = 1 then
		dbms_output.put_line('Prueba exitosa. Se creó el contrato con el blob.');
	else
		dbms_output.put_line('Prueba fallida. No se creó el contrato con blob.');
	end if;
end;
/


rollback;