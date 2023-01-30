--@Autor(es):       Alejandro Barreiro Valdez y Jessica Zepeda Baeza
--@Fecha creación:  03/06/2022
--@Descripción:     Creación de vistas

-- Vista con los empleados y sus incidencias,
-- Se agrega cuántas incidencias tiene cada uno
create or replace view v_incidencia(
  nombre,ap_paterno,ap_materno,descripcion, numero_incidencias
) as select nombre,ap_paterno,ap_materno,descripcion,
(select count(*) from incidencia where empleado_id = e.empleado_id)
numero_incidencias
from empleado e, incidencia i
where e.empleado_id = i.empleado_id;

-- Vista con los empleados activos, su puesto y ordenados por sueldo
create or replace view v_puesto(
  nombre, ap_paterno, ap_materno, puesto, sueldo_mensual
) as select e.nombre, ap_paterno, ap_materno, p.nombre puesto, 
p.sueldo_mensual
from empleado e, puesto p
where e.empleado_id = p.puesto_id
and e.actividad = 1
order by p.sueldo_mensual desc;

--Vista con los importes por nomina de cada empleado, fecha de pago y
--quincena de la nomina
create or replace view v_importe(
  curp, importe, fecha_pago, anio, num_quincena
) as select curp, importe, to_char(fecha_pago,'dd/mm/yyyy') 
fecha_pago, anio, num_quincena
from empleado_nomina en, empleado e, nomina n, quincena q
where en.empleado_id = e.empleado_id
and en.nomina_id = n.nomina_id
and n.quincena_id = q.quincena_id
order by anio,q.num_quincena asc;