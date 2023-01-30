--@Autor(es):       Alejandro Barreiro Valdez y Jessica Zepeda Baeza
--@Fecha creación:  03/06/2022
--@Descripción:     Función que obtiene el CURP

create or replace function curp(
	nombre varchar2 default null,
	ap_paterno varchar2 default null,
	ap_materno varchar2 default null,
	fecha_nacimiento date default null,
	genero varchar2 default null,
	entidad varchar2 default null,
	clave_unica varchar2 default null
) return varchar2 is

	v_curp varchar2(18);
	v_ent varchar2(2);
	v_index1 number(1,0);
	v_index2 number(1,0);
	v_index3 number(1,0);

	begin 
		if nombre is null or ap_paterno is null or ap_materno is null or 
			genero is null or fecha_nacimiento is null or entidad is null or 
			clave_unica is null then
			v_curp := null;
		else 
			v_curp := substr(ap_paterno,1,1)
				|| substr(ap_paterno,find_cons_voc(ap_paterno,'V',1),1)
				|| substr(ap_materno,1,1)
				|| substr(nombre,1,1)
				|| substr(to_char(extract(year from fecha_nacimiento)),-2,2)
				|| to_char(fecha_nacimiento,'mm')
				|| to_char(fecha_nacimiento,'dd')
				|| genero;

			select clave into v_ent from entidad_ext where nombre = upper(entidad);
			v_curp := v_curp || v_ent;

			v_index1 := find_cons_voc(ap_paterno,'C',2);
			v_index2 := find_cons_voc(ap_materno,'C',2);
			v_index3 := find_cons_voc(nombre,'C',2);
			v_curp := v_curp 
				|| substr(ap_paterno,v_index1,1)
				|| substr(ap_materno,v_index2,1)
				|| substr(nombre,v_index3,1)
				|| clave_unica;
		end if;
		return upper(v_curp);
	end;
/
show errors
