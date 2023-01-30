--@Autor(es):       Alejandro Barreiro Valdez y Jessica Zepeda Baeza
--@Fecha creación:  03/06/2022
--@Descripción:     Función que obtiene consonantes y vocales

create or replace function find_cons_voc(
	string varchar2,
	tipo varchar2,
	aparicion number
) return number is
	
	v_index number(2,0);
	v_char varchar2(1);
	v_cont number(1,0);
	begin 
		v_index := 0;
		v_cont := 0;
		if tipo = 'C' then
			while v_cont != aparicion loop
				v_index := v_index + 1;
				v_char := upper(substr(string,v_index,1));
				if v_char not in ('A','E','I','O','U') then
					v_cont := v_cont + 1;
				end if;
			end loop;
		else 
			while v_cont != aparicion loop
				v_index := v_index + 1;
				v_char := upper(substr(string,v_index,1));
				if v_char in ('A','E','I','O','U') then
					v_cont := v_cont + 1;
				end if;
			end loop;
		end if;
		return v_index;
	end;
/
show errors