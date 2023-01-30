--@Autor(es):       Alejandro Barreiro Valdez y Jessica Zepeda Baeza
--@Fecha creación:  03/06/2022
--@Descripción:     Función que devuelve un pdf

create or replace function leer_pdf(
	p_nombre_archivo varchar2
) return blob is
	
	v_bfile bfile;
	v_src_offset number := 1;
	v_dest_offset number := 1;
	v_dest_blob blob := empty_blob();
	v_src_length number;
	v_dest_length number;
	
	begin 
    DBMS_LOB.CREATETEMPORARY(v_dest_blob,true);
    v_bfile:= bfilename('TMP_DIR',p_nombre_archivo||'.pdf');
    if dbms_lob.fileexists(v_bfile) = 1 and not
      dbms_lob.isopen(v_bfile) = 1 then
        dbms_lob.open(v_bfile,dbms_lob.lob_readonly);
    else
      raise_application_error(-20007,'El archivo '
      || p_nombre_archivo
      ||' no existe en el directorio TMP_DIR'
      ||' o el archivo está abierto');
    end if;

    dbms_lob.loadblobfromfile(
      dest_lob => v_dest_blob,
      src_bfile => v_bfile,
      amount => dbms_lob.getlength(v_bfile),
      dest_offset => v_dest_offset,
      src_offset => v_src_offset   
    );
    dbms_lob.close(v_bfile);

    v_src_length := dbms_lob.getlength(v_bfile);
    v_dest_length := dbms_lob.getlength(v_dest_blob);

    if v_src_length = v_dest_length then
      dbms_output.put_line('Escritura correcta, bytes escritos: '
      || v_src_length);
    else
      raise_application_error(-20008, 'Error al escribir datos.');
    end if;

    return v_dest_blob;
	end;
/
show errors