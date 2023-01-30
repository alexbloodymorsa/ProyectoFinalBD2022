--@Autor(es):       Alejandro Barreiro Valdez y Jessica Zepeda Baeza
--@Fecha creación:  03/06/2022
--@Descripción:     Creación de sinónimos

connect bz_proy_admin/proyecto

create or replace public synonym concepto_en for empleado_nomina_concepto;

create or replace public synonym em_base for empleado_de_base;

create or replace public synonym em_honorario for empleado_por_honorarios;

create or replace public synonym email for empleado_email;

grant select on empleado to bz_proy_invitado;

grant select on nomina to bz_proy_invitado;

grant select on empleado_nomina to bz_proy_invitado;

connect bz_proy_invitado/proyecto

create or replace synonym empleado for bz_proy_admin.empleado;

create or replace synonym nomina for bz_proy_admin.nomina;

create or replace synonym empleado_nomina for bz_proy_admin.empleado_nomina;

connect bz_proy_admin/proyecto

declare
	v_sql varchar2(200);
	cursor cur_tables is select table_name from user_tables;
begin
	for t in cur_tables loop
		v_sql := 'create or replace synonym bz_'|| t.table_name ||' for '
		|| t.table_name;
		execute immediate v_sql;
	end loop;
end;
/



