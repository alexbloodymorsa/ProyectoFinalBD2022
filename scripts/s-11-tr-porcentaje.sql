--@Autor(es):       Alejandro Barreiro Valdez y Jessica Zepeda Baeza
--@Fecha creación:  03/06/2022
--@Descripción:     Trigger que verifica el valor de los porcentajes

create global temporary table porcentaje(
  empleado_id       number(10,0),
  porcentaje        number(5,2)
) on commit delete rows;

create or replace trigger trg_porcentaje_beneficiario
	before insert or delete on beneficiario
	for each row 
  declare 
    v_count number;
  begin
    case
      when inserting then 
        select count(*) into v_count 
        from beneficiario where empleado_id = :new.empleado_id;

        if v_count = 0 and :new.porcentaje != 100 then
          raise_application_error(-20003, 'El porcentaje del beneficiario ' ||
          'para el empleado ' || :new.empleado_id || ' no es 100.');
        elsif v_count > 0 and :new.porcentaje != 0 then
          raise_application_error(-20004, 'Ya existe uno o varios ' || 
            'beneficiarios para el empleado ' || :new.empleado_id || 
            ' con 100% de porcentaje.');
        end if;

      when deleting then 
        if :old.porcentaje != 0 then
          raise_application_error(-20005, 'No se puede eliminar ' || 
          'beneficiario(s) para el empleado ' || :old.empleado_id ||
          ' porque su porcentaje no es 0.');
         end if;
    end case;
  end;
/ 
show errors
