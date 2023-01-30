--@Autor(es):       Alejandro Barreiro Valdez y Jessica Zepeda Baeza
--@Fecha creación:  03/06/2022
--@Descripción:     Creación de índices

--
-- Índice: nombre de proyecto
--
create index proyecto_nombre_ix on proyecto(nombre);

--
-- Índice: universidad de becario
--
create index becario_universidad_ix on becario(universidad);

--
-- Índice: folio de credencial
--
create unique index credencial_folio_iuk on credencial(folio);

--
-- Índice: empleado id beneficiario
--
create index beneficiario_empleado_id_ix on beneficiario(empleado_id);

--
-- Índice: anio y num_quincena
--
create unique index quincena_iuk on quincena(anio, num_quincena);

--
-- Índice: curp en mayúsculas
--
create index empleado_curp_ix on empleado(upper(curp));

--
-- Índice: rfc en mayúsculas
--
create index empleado_rfc_ix on empleado(upper(rfc));

--
-- Índice: fecha en letra
--
create index nomina_fecha_generacion_ix 
  on nomina(to_char(fecha_generacion, 'dd/mm/yyyy'));