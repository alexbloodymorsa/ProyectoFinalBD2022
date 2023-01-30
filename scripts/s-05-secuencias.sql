--@Autor(es):       Alejandro Barreiro Valdez y Jessica Zepeda Baeza
--@Fecha creación:  03/06/2022
--@Descripción:     Creación de secuencias

-- 
-- sequence: empleado 
--

create sequence empleado_seq
  start with 1
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

-- 
-- sequence: proyecto 
--

create sequence proyecto_seq
  start with 10
  increment by 10
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

-- 
-- sequence: contrato 
--

create sequence contrato_seq
  start with 1
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

-- 
-- sequence: empleado_email 
--

create sequence empleado_email_seq
  start with 1001
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

-- 
-- sequence: historico_puesto 
--

create sequence historico_puesto_seq
  start with 1
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

-- 
-- sequence: empleado_nomina 
--

create sequence empleado_nomina_seq
  start with 1
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

-- 
-- sequence: concepto_pago 
--

create sequence concepto_pago_seq
  start with 1
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

-- 
-- sequence: quincena 
--

create sequence quincena_seq
  start with 1
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

-- 
-- sequence: nomina 
--

create sequence nomina_seq
  start with 1
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

-- 
-- sequence: credencial 
--

create sequence credencial_seq
  start with 2001
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

-- 
-- sequence: beneficiario 
--

create sequence beneficiario_seq
  start with 3001
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;

-- 
-- sequence: empleado_nomina_concepto 
--

create sequence empleado_nomina_concepto_seq
  start with 1
  increment by 1
  nominvalue
  nomaxvalue
  cache 20
  noorder
;