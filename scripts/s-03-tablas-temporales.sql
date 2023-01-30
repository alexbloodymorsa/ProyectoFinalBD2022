--@Autor(es):       Alejandro Barreiro Valdez y Jessica Zepeda Baeza
--@Fecha creación:  03/06/2022
--@Descripción:     Tabla temporal

connect bz_proy_admin/proyecto

create private temporary table ora$ptt_empleado_base(
  empleado_id       number(10,0),
  nombre            varchar2(15),
  ap_paterno        varchar2(15),
  ap_materno        varchar2(15),
  curp              varchar2(18),
  rfc               varchar2(13),
  fecha_nacimiento  date,
  actividad         number(1,0),
  tipo              varchar2(1),
  fecha_puesto      date,
  puesto_id         number(10,0),
  num_empleado_base number(10,0),
  fecha_inicio      date,
  nivel_empleado_id number(10,0)
) on commit preserve definition;

insert into 
  ora$ptt_empleado_base(empleado_id, nombre, ap_paterno,
  ap_materno, curp, rfc, fecha_nacimiento, actividad, tipo,
  fecha_puesto, puesto_id, num_empleado_base, fecha_inicio,
  nivel_empleado_id)
values
  (1,'Alberto','Juárez','Robles','JURA820212HDFRBLA3','JURA8202124DW',
    to_date('12/02/1982','DD/MM/YYYY'),1,'S',
    to_date('22/11/2020','DD/MM/YYYY'),2,1,
    to_date('01/12/2020','DD/MM/YYYY'),3);

insert into 
  ora$ptt_empleado_base(empleado_id, nombre, ap_paterno,
  ap_materno, curp, rfc, fecha_nacimiento, actividad, tipo,
  fecha_puesto, puesto_id, num_empleado_base, fecha_inicio,
  nivel_empleado_id)
values
  (2,'Claudia','Fernández','Quijano','FEQC950516MMCRJLA1','FEQC950516D31',
    to_date('16/05/1995','DD/MM/YYYY'),1,'S',
    to_date('11/04/2021','DD/MM/YYYY'),5,2,
    to_date('15/05/2021','DD/MM/YYYY'),2);

insert into 
  ora$ptt_empleado_base(empleado_id, nombre, ap_paterno,
  ap_materno, curp, rfc, fecha_nacimiento, actividad, tipo,
  fecha_puesto, puesto_id, num_empleado_base, fecha_inicio,
  nivel_empleado_id)
values
  (3,'Perla','Tenorio','Carrasco','TECP921029MDFNRRA8','TECP9210299PO',
  to_date('29/10/1992','DD/MM/YYYY'),0,'S',
  to_date('03/03/2022','DD/MM/YYYY'),3,3,
  to_date('15/03/2022','DD/MM/YYYY'),1);