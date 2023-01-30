--@Autor(es):       Alejandro Barreiro Valdez y Jessica Zepeda Baeza
--@Fecha creación:  03/06/2022
--@Descripción:     Consultas

-- Nombre completo de empleados cuyo puesto incluya la palabra director.
select nombre, ap_paterno, puesto
from v_puesto
where puesto like '%DIRECTOR%';

-- Nombre completo, rfc y tipo de los empleados. De acuerdo al tipo se muestra
-- su número de empleado base, el proyecto en el que trabajan o su universidad
select e.nombre, ap_paterno, ap_materno, rfc, tipo, num_empleado_base, p.nombre 
  nombre_proyecto, universidad
from empleado e
left outer join em_base eb
  on e.empleado_id = eb.empleado_id
left outer join em_honorario eh
  on e.empleado_id = eh.empleado_id
left outer join becario b
  on e.empleado_id = b.empleado_id
left outer join proyecto p
  on p.proyecto_id = eh.proyecto_id
order by e.empleado_id;

-- Empleados cuya suma de deducciones para una nomina es mayor a 10000
select empleado_id, nomina_id, sum(q.importe) importe_deducciones
from (
  select empleado_nomina_id, importe
  from empleado_nomina_concepto
  natural join concepto_pago
  where tipo = 'D') q,
  empleado_nomina en
where q.empleado_nomina_id = en.empleado_nomina_id
group by q.empleado_nomina_id, empleado_id, nomina_id
having sum(q.importe) > 10000;

--Máximo, mínimo y promedio de la variacion de inflación por año
select anio, max(variacion) maximo, 
min(variacion) minimo, trunc(avg(variacion),3) promedio 
from inflacion_ext
group by anio;

--Empleados becarios con promedio mayor a 9 y empleados base que entraron
--a la empresa en el 2019
select e.nombre, e.ap_paterno, e.ap_materno,
e.curp, to_char(e.fecha_puesto, 'dd/mm/yyyy') fecha_puesto
from(
select becario.empleado_id 
from becario
where promedio > 90
union
select em_base.empleado_id
from em_base
where extract(year from fecha_inicio) = 2019) x
join empleado e
on x.empleado_id = e.empleado_id;

--Nombre completo y puesto de empleados base activos de la tabla temporal
@s-03-tablas-temporales.sql
select nombre, ap_paterno, ap_materno, puesto_id 
from ora$ptt_empleado_base
where actividad = 1;