--@Autor(es):       Alejandro Barreiro Valdez y Jessica Zepeda Baeza
--@Fecha creación:  03/06/2022
--@Descripción:     Carga inicial

connect bz_proy_admin/proyecto

alter session set nls_date_format='dd/mm/yyyy';

--
-- registros tabla: puesto (10)
--
insert into puesto(puesto_id,clave,nombre,descripcion,fecha_inicio_vigencia,
	fecha_fin_vigencia,sueldo_mensual) 
values (1,'P1','JEFE DE DEPARTAMENTO DE ARCHIVO','COORDINAR, ORGANIZAR Y 
	APLICAR LOS CRITERIOS ARCHIVISTICOS QUE EN LA SECRETARIA EXISTEN PARA EL 
	MANEJO DE LA DOCUMENTACION GENERADA Y RECIBIDA EN LA DIRECCION GENERAL, 
	PARA FACILITAR EL USO Y RESGUARDO DE LA INFORMACION EN TRAMITE Y PROCURAR 
	LA CONSERVACION DE AQUELLA QUE TENGA VALOR HISTORICO.','01/01/2019',
	'31/12/2021',22948);
insert into puesto(puesto_id,clave,nombre,descripcion,fecha_inicio_vigencia,
	fecha_fin_vigencia,sueldo_mensual) 
values (2,'P2','DIRECTOR DE RIESGO Y PROYECTOS','PREVIENE LOS ACCIDENTES 
	RELACIONADOS CON LAS ACTIVIDADES ALTAMENTE RIESGOSAS Y MITIGA SUS EFECTOS 
	EN CASO DE OCURRENCIA QUE PUEDAN CAUSAR DESEQUILIBRIOS ECOLOGICOS Y DAÑOS 
	A LA POBLACION.','01/06/2020','31/12/2022',62042);
insert into puesto(puesto_id,clave,nombre,descripcion,fecha_inicio_vigencia,
	fecha_fin_vigencia,sueldo_mensual) 
values (3,'P3','INSPECTOR','ASISTE A LOS EVENTOS RELATIVOS A JUEGOS Y SORTEOS
	 EN EL DISTRITO FEDERAL, PARA SUPERVISAR EL CUMPLIMIENTO DE LOS TERMINOS Y 
	CONDICIONES ESTABLECIDOS EN EL PERMISO OTORGADO.','01/01/2021',NULL,8908.53);
insert into puesto(puesto_id,clave,nombre,descripcion,fecha_inicio_vigencia,
	fecha_fin_vigencia,sueldo_mensual) 
values (4,'P4','SUBDIRECTOR DE SISTEMAS','SUPERVISA Y EVALUA LA UTILIDAD DE 
	LAS ESTRATEGIAS Y METODOLOGIAS IMPLEMENTADAS EN LOS SISTEMAS DE COMPUTO DEL 
	REGISTRO NACIONAL DE POBLACION, PARA ASEGURAR LA CONGRUENCIA CON LOS 
	REQUERIMIENTOS Y OBJETIVOS DE LAS DISTINTAS AREAS QUE CONFORMAN LA DIRECCION 
	GENERAL DEL REGISTRO NACIONAL DE POBLACION E IDENTIFICACION PERSONAL.','
	01/09/2019','31/12/2019',28664.16);
insert into puesto(puesto_id,clave,nombre,descripcion,fecha_inicio_vigencia,
	fecha_fin_vigencia,sueldo_mensual) 
values (5,'P5','SUBDIRECTOR DE CONTROL PRESUPUESTAL','SUPERVISA LOS TRABAJOS 
	DE ELABORACION DEL PRESUPUESTO DE SERVICIOS PERSONALES Y TRANSFERENCIAS 
	PARA APOYO A PROGRAMAS DE LAS DIVERSAS AREAS DE LA SECRETARIA DE GOBERNACION,
	 A FIN DE COADYUVAR EN LOS PROCESOS DE ASIGNACION DE LOS RECURSOS FINANCIEROS
	 .','15/08/2021','15/08/2022',47890.93);
insert into puesto(puesto_id,clave,nombre,descripcion,fecha_inicio_vigencia,
	fecha_fin_vigencia,sueldo_mensual) 
values (6,'P6','SUBDIRECTOR DE TRANSPORTES Y TALLERES','SUPERVISA LA 
	ACTUALIZACION DEL INVENTARIO DE VEHICULOS PROPIEDAD DE LA SECRETARIA, PARA 
	EFECTUAR LA PLANEACION, PROGRAMACION Y DICTAMINACION DE SU MANTENIMIENTO 
	PREVENTIVO Y CORRECTIVO.','15/09/2020',NULL,39909.10);
insert into puesto(puesto_id,clave,nombre,descripcion,fecha_inicio_vigencia,
	fecha_fin_vigencia,sueldo_mensual) 
values (7,'P7','AUXILIAR ADMINISTRATIVO DE SEGUROS','EFECTUA EL PROCESO DE 
	ASEGURAMIENTO DE LOS BIENES PATRIMONIALES PROPIEDAD DE LA SECRETARIA DE 
	GOBERNACION, PARA MANTENER SU COBERTURA ANTE LA PRESENCIA DE EVENTUALES 
	SINIESTROS.','15/03/2020','15/03/2021',7852.35);
insert into puesto(puesto_id,clave,nombre,descripcion,fecha_inicio_vigencia,
	fecha_fin_vigencia,sueldo_mensual) 
values (8,'P8','ABOGADO DICTAMINADOR DE CONTRATOS','RECIBIR Y REGISTRAR LOS 
	PROYECTOS DE CONTRATOS QUE INGRESAN A LA UNIDAD DE ASUNTOS JURIDICOS, PARA 
	ATENDER LAS SOLICITUDES DE ANALISIS DE DICHOS INSTRUMENTOS.','01/04/2021',
	'30/06/2021',9344.45);
insert into puesto(puesto_id,clave,nombre,descripcion,fecha_inicio_vigencia,
	fecha_fin_vigencia,sueldo_mensual) 
values (9,'P9','JEFE DE DEPARTAMENTO DE RECURSOS HUMANOS','COORDINA LAS 
	ACCIONES NECESARIAS QUE PERMITAN UNA EFICIENTE ADMINISTRACION DE LOS 
	RECURSOS HUMANOS, FACILITANDO EL PAGO DE SUELDOS Y SALARIOS, EL OTORGAMIENTO 
	DE PRESTACIONES Y LA PROFESIONALIZACION Y CAPACITACION DE LOS SERVIDORES 
	PUBLICOS.','15/08/2019',NULL,22023.00);
insert into puesto(puesto_id,clave,nombre,descripcion,fecha_inicio_vigencia,
	fecha_fin_vigencia,sueldo_mensual) 
values (10,'P10','INVESTIGADOR ESPECIALIZADO','DESARROLLA UN TOPICO 
	ESPECIFICO E INCREMENTA EL CONOCIMIENTO EN UN AREA, BRINDANDO SOLUCIONES A 
	DILEMAS, RESPUESTAS A INCERTIDUMBRES O NUEVOS MECANISMOS DE EXPRESION.',
	'01/11/2021','30/11/2022',8111.05);
insert into puesto(puesto_id,clave,nombre,descripcion,fecha_inicio_vigencia,
	fecha_fin_vigencia,sueldo_mensual) 
values (11,'P2','DIRECTOR DE RIESGO Y PROYECTOS','PREVIENE LOS ACCIDENTES 
	RELACIONADOS CON LAS ACTIVIDADES ALTAMENTE RIESGOSAS Y MITIGA SUS EFECTOS 
	EN CASO DE OCURRENCIA QUE PUEDAN CAUSAR DESEQUILIBRIOS ECOLOGICOS Y DAÑOS 
	A LA POBLACION.','01/06/2018','01/06/2020',60281);
insert into puesto(puesto_id,clave,nombre,descripcion,fecha_inicio_vigencia,
	fecha_fin_vigencia,sueldo_mensual) 
values (12,'P5','SUBDIRECTOR DE CONTROL PRESUPUESTAL','SUPERVISA LOS TRABAJOS 
	DE ELABORACION DEL PRESUPUESTO DE SERVICIOS PERSONALES Y TRANSFERENCIAS 
	PARA APOYO A PROGRAMAS DE LAS DIVERSAS AREAS DE LA SECRETARIA DE GOBERNACION,
	 A FIN DE COADYUVAR EN LOS PROCESOS DE ASIGNACION DE LOS RECURSOS FINANCIEROS
	 .','15/08/2019','15/08/2020',37902.01);
insert into puesto(puesto_id,clave,nombre,descripcion,fecha_inicio_vigencia,
	fecha_fin_vigencia,sueldo_mensual) 
values (13,'P5','SUBDIRECTOR DE CONTROL PRESUPUESTAL','SUPERVISA LOS TRABAJOS 
	DE ELABORACION DEL PRESUPUESTO DE SERVICIOS PERSONALES Y TRANSFERENCIAS 
	PARA APOYO A PROGRAMAS DE LAS DIVERSAS AREAS DE LA SECRETARIA DE GOBERNACION,
	 A FIN DE COADYUVAR EN LOS PROCESOS DE ASIGNACION DE LOS RECURSOS FINANCIEROS
	 .','15/08/2020','15/08/2021',41642.88);

--
-- registros tabla: proyecto (5)
--
insert into proyecto(proyecto_id,nombre,descripcion,num_partida_presupuestal)
values (proyecto_seq.nextval,'Más y Mejor Movilidad','Mejora el transporte 
	público y crear nuevos en las zonas donde más se necesitan a través de 
	tecnologías que no contaminan el medio ambiente. Además disminuir los 
	tiempos de traslado e incrementar la accesibilidad universal, para 
	garantizar viajes más rápidos, cómodos, sustentables y seguros para toda la 
	población.','NHG0ETZ3');
insert into proyecto(proyecto_id,nombre,descripcion,num_partida_presupuestal)
values (proyecto_seq.nextval,'Capital Cultural de América','Promueve el 
	desarrollo de múltiples visiones y propicia las condiciones de encuentro 
	entre las diferentes manifestaciones culturales. Sin dejar de lado la 
	cultura académica, se ha puesto énfasis en la promoción y el desarrollo 
	de la cultura comunitaria, de las colonias y barrios de Nuestra Ciudad.',
	'OBA2THG5');
insert into proyecto(proyecto_id,nombre,descripcion,num_partida_presupuestal)
values (proyecto_seq.nextval,'Cruceros Seguros','Renovación, rehabilitación 
	y reordenamiento de 100 intersecciones con altos índices de atropellamiento, 
	distribuidas en las diferentes alcaldías de la capital.','KSO8KDH2');
insert into proyecto(proyecto_id,nombre,descripcion,num_partida_presupuestal)
values (proyecto_seq.nextval,'Tren Interurbano CDMX','Creación de un medio de 
	transporte que conectará la Zona Metropolitana de Toluca con el poniente de 
	la Ciudad de México. Este medio de transporte dará servicio a 230 mil 
	personas usuarias al día, tendrá una longitud total de 57.7 kilómetros y 
	contará con 7 estaciones (2 terminales y 5 intermedias).','MML0KBD1');
insert into proyecto(proyecto_id,nombre,descripcion,num_partida_presupuestal)
values (proyecto_seq.nextval,'Sembrando Parques','Creación y regeneración de 
	espacios dignos y propicios para estimular la convivencia entre los 
	habitantes de la Ciudad, y de esta manera promover el fortalecimiento del 
	tejido social, impulsando la participación ciudadana.','JSO5MAD8');

--
-- registros tabla: nivel_empleado (5)
--
insert into nivel_empleado(nivel_empleado_id,clave,descripcion)
values (1,'DGEN','Director ejecutivo, tiene la máxima autoridad sobre la 
	empresa y es el encargado de poner en marcha las diferentes acciones a 
	realizar para alcanzar las metas de la compañía.');
insert into nivel_empleado(nivel_empleado_id,clave,descripcion)
values (2,'DDEP','Director de departamento, encargado de dirigir y elaborar 
	las estrategias que va a seguir la empresa en lo que respecta a su ámbito 
	de actuación, de los cuales son sus máximos responsables.');
insert into nivel_empleado(nivel_empleado_id,clave,descripcion)
values (3,'GER','Gerente o jefe, dirigen y coordinan a los trabajadores de una 
	determinada sección con el fin de llevar a cabo las actividades planteadas 
	por los mandos superiores. Tienen potestad para tomar decisiones a nivel 
	técnico.');
insert into nivel_empleado(nivel_empleado_id,clave,descripcion)
values (4,'SUP','Supervisor, dedicado directamente a la gestión de la 
	actividad realizada por los trabajadores. Este puesto se encarga de 
	coordinar y supervisar el trabajo y la situación de los empleados, 
	contribuyendo a la buena realización de la actividad y a valorar las 
	necesidades y situación laboral de sus empleados.');
insert into nivel_empleado(nivel_empleado_id,clave,descripcion)
values (5,'OPER','Operativo, desempeña la labor rutinaria y lleva a cabo las 
	tareas y operaciones que los puestos superiores les indican cómo su labor 
	específica.');

--
-- registros tabla: concepto_pago (10)
--
insert into concepto_pago(concepto_pago_id,clave,nombre,descripcion,tipo)
values (concepto_pago_seq.nextval,'P001','Sueldo mensual','Cantidad mínima de 
	dinero obtenida por el trabajo realizado.','P');
insert into concepto_pago(concepto_pago_id,clave,nombre,descripcion,tipo)
values (concepto_pago_seq.nextval,'P002','Aguinaldo','Dinero que representa un 
	mes de sueldo y se otorga en diciembre obligatoriamente.','P');
insert into concepto_pago(concepto_pago_id,clave,nombre,descripcion,tipo)
values (concepto_pago_seq.nextval,'P003','Horas Extra','Dinero otorgado por el 
	trabajo adicional a la jornada diaria.','P');
insert into concepto_pago(concepto_pago_id,clave,nombre,descripcion,tipo)
values (concepto_pago_seq.nextval,'P004','Bonos','Dinero recibido por el 
	cumplimiento de una meta, por antigüedad o por buen desempeño','P');
insert into concepto_pago(concepto_pago_id,clave,nombre,descripcion,tipo)
values (concepto_pago_seq.nextval,'P005','Vacaciones','Dinero como un 
	beneficio extra otorgado una vez al año.','P');
insert into concepto_pago(concepto_pago_id,clave,nombre,descripcion,tipo)
values (concepto_pago_seq.nextval,'D001','ISR','Impuesto sobre la renta se 
	descuenta del sueldo mensual según lo que gana el empleado desde 0% hasta 
	35%','D');
insert into concepto_pago(concepto_pago_id,clave,nombre,descripcion,tipo)
values (concepto_pago_seq.nextval,'D002','Seguro Médico','Dinero que garantiza 
	el servicio médico en caso de enfermedad para el trabajador.','D');
insert into concepto_pago(concepto_pago_id,clave,nombre,descripcion,tipo)
values (concepto_pago_seq.nextval,'D003','Prestamos','Dinero que se prestó al 
	trabajador.','D');
insert into concepto_pago(concepto_pago_id,clave,nombre,descripcion,tipo)
values (concepto_pago_seq.nextval,'D004','Fondo para retiro','Aportación 
	voluntaria de dinero que se coloca en un fondo para el retiro del 
	trabajador.','D');
insert into concepto_pago(concepto_pago_id,clave,nombre,descripcion,tipo)
values (concepto_pago_seq.nextval,'D005','Caja de ahorros','Incentivo de 
	ahorro donde el trabajador define una cantidad de dinero y la empresa coloca 
	el doble en una caja de ahorro.','D');

--
-- registros tabla: quincena (36)
--
insert into quincena(quincena_id,anio,num_quincena) 
values(quincena_seq.nextval,2019,1);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2019,3);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2019,5);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2019,7);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2019,9);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2019,11);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2019,13);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2019,15);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2019,17);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2019,19);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2019,21);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2019,23);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2020,2);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2020,4);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2020,6);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2020,8);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2020,10);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2020,12);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2020,14);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2020,16);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2020,18);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2020,20);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2020,22);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2020,24);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2021,1);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2021,3);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2021,4);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2021,7);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2021,9);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2021,10);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2021,13);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2021,15);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2021,16);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2021,19);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2021,21);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2021,22);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2022,2);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2022,4);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2022,5);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2022,8);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2022,10);
insert into quincena(quincena_id,anio,num_quincena)
values(quincena_seq.nextval,2022,11);


--
-- registros tabla: nomina (10)
--
insert into nomina(nomina_id,fecha_generacion,fecha_pago,importe_total,
	pagos_generados,pagos_no_cobrados,quincena_id)
values(nomina_seq.nextval,'28/10/2020','30/10/2020',20213388.34,908,30,22);
insert into nomina(nomina_id,fecha_generacion,fecha_pago,importe_total,
	pagos_generados,pagos_no_cobrados,quincena_id)
values(nomina_seq.nextval,'26/05/2022','28/05/2022',35663077.8,1064,83,41);
insert into nomina(nomina_id,fecha_generacion,fecha_pago,importe_total,
	pagos_generados,pagos_no_cobrados,quincena_id)
values(nomina_seq.nextval,'24/02/2021','26/02/2021',19111832.78,555,18,27);
insert into nomina(nomina_id,fecha_generacion,fecha_pago,importe_total,
	pagos_generados,pagos_no_cobrados,quincena_id)
values(nomina_seq.nextval,'17/07/2019','19/07/2019',31246468.66,1599,46,7);
insert into nomina(nomina_id,fecha_generacion,fecha_pago,importe_total,
	pagos_generados,pagos_no_cobrados,quincena_id)
values(nomina_seq.nextval,'24/06/2020','26/06/2020',33206339.21,686,55,18);
insert into nomina(nomina_id,fecha_generacion,fecha_pago,importe_total,
	pagos_generados,pagos_no_cobrados,quincena_id)
values(nomina_seq.nextval,'16/03/2022','18/03/2022',24790336.63,780,37,39);
insert into nomina(nomina_id,fecha_generacion,fecha_pago,importe_total,
	pagos_generados,pagos_no_cobrados,quincena_id)
values(nomina_seq.nextval,'17/04/2019','19/04/2019',42843212.67,1022,84,4);
insert into nomina(nomina_id,fecha_generacion,fecha_pago,importe_total,
	pagos_generados,pagos_no_cobrados,quincena_id)
values(nomina_seq.nextval,'26/05/2021','28/05/2021',15897065.44,1363,64,30);
insert into nomina(nomina_id,fecha_generacion,fecha_pago,importe_total,
	pagos_generados,pagos_no_cobrados,quincena_id)
values(nomina_seq.nextval,'13/10/2021','15/10/2021',41427606.95,1461,61,34);
insert into nomina(nomina_id,fecha_generacion,fecha_pago,importe_total,
	pagos_generados,pagos_no_cobrados,quincena_id)
values(nomina_seq.nextval,'29/07/2020','31/07/2020',12191270.29,1347,47,19);

--
-- registros tabla: empleado (12)
--
insert into empleado(empleado_id,nombre,ap_paterno,ap_materno,curp,rfc,
  fecha_nacimiento,actividad,tipo,fecha_puesto,puesto_id)
values(empleado_seq.nextval,'Juliana','Felix','Stredder','FESJ880808MDFLTLA7',
	'FESJ880808J7G','08/08/1988',1,'S','01/06/2020',2);
insert into empleado(empleado_id,nombre,ap_paterno,ap_materno,curp,rfc,
  fecha_nacimiento,actividad,tipo,fecha_puesto,puesto_id)
values(empleado_seq.nextval,'Inés','González','Edwins','GOEI790106MMSNDNA1',
	'GOEI7901069H2','06/01/1979',1,'H','01/01/2020',9);
insert into empleado(empleado_id,nombre,ap_paterno,ap_materno,curp,rfc,
  fecha_nacimiento,actividad,tipo,fecha_puesto,puesto_id)
values(empleado_seq.nextval,'Miguel','Carrillo','Gómez','CAGM621027HMCRMGA9',
	'CAGM621027J33','27/10/1962',0,'S','02/01/2019',1);
insert into empleado(empleado_id,nombre,ap_paterno,ap_materno,curp,rfc,
  fecha_nacimiento,actividad,tipo,fecha_puesto,puesto_id)
values(empleado_seq.nextval,'Samuel','Jiménez','Solís','JISS710704HDFMLMA4',
	'JISS710704BM3','04/07/1971',1,'S','15/08/2021',5);
insert into empleado(empleado_id,nombre,ap_paterno,ap_materno,curp,rfc,
  fecha_nacimiento,actividad,tipo,fecha_puesto,puesto_id)
values(empleado_seq.nextval,'Tabatha','Chávez','Vela','CAVT960705MDFHLBA2',
	'CAVT96070599J','05/07/1996',1,'B','19/03/2021',10);
insert into empleado(empleado_id,nombre,ap_paterno,ap_materno,curp,rfc,
  fecha_nacimiento,actividad,tipo,fecha_puesto,puesto_id)
values(empleado_seq.nextval,'Brenda','Nava','Hernández','NAHB660115MMNVRRA1',
	'NAHB660115HT6','15/01/1966',1,'H','11/01/2022',3);
insert into empleado(empleado_id,nombre,ap_paterno,ap_materno,curp,rfc,
  fecha_nacimiento,actividad,tipo,fecha_puesto,puesto_id)
values(empleado_seq.nextval,'Tomás','Muñoz','Pérez','MUPT020315HSRNRMA9',
	'MUPT0203158NS','15/03/1990',0,'B','28/05/2020',7);
insert into empleado(empleado_id,nombre,ap_paterno,ap_materno,curp,rfc,
  fecha_nacimiento,actividad,tipo,fecha_puesto,puesto_id)
values(empleado_seq.nextval,'Juan','Venegas','Salgado','VESJ851129HMSNLNA6',
	'VESJ851129BJ6','29/11/1985',0,'H','01/09/2019',4);
insert into empleado(empleado_id,nombre,ap_paterno,ap_materno,curp,rfc,
  fecha_nacimiento,tipo,fecha_puesto,puesto_id)
values(empleado_seq.nextval,'Gabriel','Valencia','Torres','VATG890518HMCLRBA9',
	'VATG890518BY0','18/05/1989','S','08/12/2020',6);
insert into empleado(empleado_id,nombre,ap_paterno,ap_materno,curp,rfc,
  fecha_nacimiento,actividad,tipo,fecha_puesto,puesto_id)
values(empleado_seq.nextval,'Arturo','López','Rodríguez','LORA979626HTLPDRA8',
	'LORA979626M53','26/06/1997',1,'B','17/02/2022',5);
insert into empleado(empleado_id,nombre,ap_paterno,ap_materno,curp,rfc,
  fecha_nacimiento,actividad,tipo,fecha_puesto,puesto_id)
values(empleado_seq.nextval,'Rosario','Mena','Osorio','MEOR670609MMCNSSA3',
	'MEOR670609','09/06/1967',0,'H','20/04/2021',8);
insert into empleado(empleado_id,nombre,ap_paterno,ap_materno,curp,rfc,
  fecha_nacimiento,tipo,fecha_puesto,puesto_id)
values(empleado_seq.nextval,'Fernanda','Román','Juárez','ROJF001130MGTMRRA5',
	'ROJF0011307B6','30/11/2000','B','01/01/2022',3);

--
-- registros tabla: empleado_email (16)
--
insert into empleado_email(empleado_email_id,email,empleado_id)
values (empleado_email_seq.nextval,'jstredder0@toplist.cz',1);
insert into empleado_email(empleado_email_id,email,empleado_id)
values (empleado_email_seq.nextval,'iedwins1@tamu.edu',2);
insert into empleado_email(empleado_email_id,email,empleado_id)
values (empleado_email_seq.nextval,'mcarrillog2@state.gov',3);
insert into empleado_email(empleado_email_id,email,empleado_id)
values (empleado_email_seq.nextval,'samueljs3@yelp.com',4);
insert into empleado_email(empleado_email_id,email,empleado_id)
values (empleado_email_seq.nextval,'tabchavel4@mac.com',5);
insert into empleado_email(empleado_email_id,email,empleado_id)
values (empleado_email_seq.nextval,'brendanh@google.it',6);
insert into empleado_email(empleado_email_id,email,empleado_id)
values (empleado_email_seq.nextval,'munozperez6@purevolume.com',7);
insert into empleado_email(empleado_email_id,email,empleado_id)
values (empleado_email_seq.nextval,'venegasjuan@irs.gov',8);
insert into empleado_email(empleado_email_id,email,empleado_id)
values (empleado_email_seq.nextval,'gavlencia@netvibes.com',9);
insert into empleado_email(empleado_email_id,email,empleado_id)
values (empleado_email_seq.nextval,'arloro@mail.ru',10);
insert into empleado_email(empleado_email_id,email,empleado_id)
values (empleado_email_seq.nextval,'menarosario@yellowbook.com',11);
insert into empleado_email(empleado_email_id,email,empleado_id)
values (empleado_email_seq.nextval,'romanfer@ebay.com',12);
insert into empleado_email(empleado_email_id,email,empleado_id)
values (empleado_email_seq.nextval,'tchavezvela@slate.com',5);
insert into empleado_email(empleado_email_id,email,empleado_id)
values (empleado_email_seq.nextval,'tabathacv@cpanel.net',5);
insert into empleado_email(empleado_email_id,email,empleado_id)
values (empleado_email_seq.nextval,'rosmenaoso@icq.com',11);
insert into empleado_email(empleado_email_id,email,empleado_id)
values (empleado_email_seq.nextval,'jstredder0@gizmodo.com',1);

--
-- registros tabla: becario (4)
--
insert into becario(empleado_id,universidad,carrera,fecha_titulacion,promedio)
values (5,'Universidad del Valle de México','Física','30/06/2020',87.62);
insert into becario(empleado_id,universidad,carrera,fecha_titulacion,promedio)
values (7,'Universidad Nacional Autónoma de México','Contaduría','28/12/2011',92.00);
insert into becario(empleado_id,universidad,carrera,fecha_titulacion,promedio)
values (10,'Universidad Latinoamericana','Economía','20/09/2020',81.12);
insert into becario(empleado_id,universidad,carrera,fecha_titulacion,promedio)
values (12,'Universidad Autónoma de Puebla','Derecho','23/03/2025',100.00);

--
-- registros tabla: empleado_de_base (4)
--
insert into empleado_de_base(empleado_id,fecha_inicio,protesta,
	nivel_empleado_id)
values (3,'02/01/2019',empty_blob(),5);
insert into empleado_de_base(empleado_id,num_empleado_base,fecha_inicio,
	protesta,nivel_empleado_id)
values (1,null,'05/07/2018',empty_blob(),2);
insert into empleado_de_base(empleado_id,num_empleado_base,fecha_inicio,
	protesta,nivel_empleado_id)
values (4,null,'13/09/2019',empty_blob(),3);
insert into empleado_de_base(empleado_id,fecha_inicio,protesta,
	nivel_empleado_id)
values (9,'08/12/2020',empty_blob(),4);

--
-- registros tabla: empleado_por_honorarios (4)
--
insert into empleado_por_honorarios(empleado_id,proyecto_id,
	empleado_contrato_id) values (2,50,4);
insert into empleado_por_honorarios(empleado_id,proyecto_id,
	empleado_contrato_id) values (6,40,1);
insert into empleado_por_honorarios(empleado_id,proyecto_id,
	empleado_contrato_id) values (8,10,1);
insert into empleado_por_honorarios(empleado_id,proyecto_id,
	empleado_contrato_id) values (11,20,1);

--
-- registros tabla: contrato (9)
--
insert into contrato(contrato_id,num_contrato,fecha_inicio,fecha_fin,pdf,
	empleado_id)
values (contrato_seq.nextval,7155,'11/01/2022','11/04/2022',empty_blob(),6);
insert into contrato(contrato_id,num_contrato,fecha_inicio,fecha_fin,pdf,
	empleado_id)
values (contrato_seq.nextval,5030,'11/04/2022','11/07/2022',empty_blob(),6);
insert into contrato(contrato_id,num_contrato,fecha_inicio,fecha_fin,pdf,
	empleado_id)
values (contrato_seq.nextval,4978,'01/09/2019','01/12/2019',empty_blob(),8);
insert into contrato(contrato_id,num_contrato,fecha_inicio,fecha_fin,pdf,
	empleado_id)
values (contrato_seq.nextval,5668,'01/12/2019','31/12/2019',empty_blob(),8);
insert into contrato(contrato_id,num_contrato,fecha_inicio,fecha_fin,pdf,
	empleado_id)
values (contrato_seq.nextval,5540,'20/04/2021','20/07/2021',empty_blob(),11);
insert into contrato(contrato_id,num_contrato,fecha_inicio,fecha_fin,pdf,
	empleado_id)
values (contrato_seq.nextval,6092,'20/07/2021','20/10/2021',empty_blob(),11);
insert into contrato(contrato_id,num_contrato,fecha_inicio,fecha_fin,pdf,
	empleado_id)
values (contrato_seq.nextval,7021,'20/10/2021','20/01/2022',empty_blob(),11);
insert into contrato(contrato_id,num_contrato,fecha_inicio,fecha_fin,pdf,
	empleado_id)
values (contrato_seq.nextval,7402,'20/04/2022','20/07/2022',empty_blob(),11);
insert into contrato(contrato_id,num_contrato,fecha_inicio,fecha_fin,pdf,
	empleado_id)
values (contrato_seq.nextval,6625,'01/01/2020','01/04/2020',empty_blob(),2);

--
-- registros tabla: credencial (16)
--
insert into credencial(credencial_id,folio,num_emision,fecha_emision,vigencia,
	empleado_id,credencial_ant_id)
values (credencial_seq.nextval,'NIE72',1,'12/07/2018',1,1,NULL);
insert into credencial(credencial_id,folio,num_emision,fecha_emision,vigencia,
	empleado_id,credencial_ant_id)
values (credencial_seq.nextval,'BSI10',1,'12/01/2019',1,3,NULL);
insert into credencial(credencial_id,folio,num_emision,fecha_emision,vigencia,
	empleado_id,credencial_ant_id)
values (credencial_seq.nextval,'NPQ39',1,'05/09/2019',1,8,NULL);
insert into credencial(credencial_id,folio,num_emision,fecha_emision,vigencia,
	empleado_id,credencial_ant_id)
values (credencial_seq.nextval,'PQW11',1,'20/09/2019',0,4,NULL);
insert into credencial(credencial_id,folio,num_emision,fecha_emision,vigencia,
	empleado_id,credencial_ant_id)
values (credencial_seq.nextval,'ACY27',1,'07/01/2020',1,2,NULL);
insert into credencial(credencial_id,folio,num_emision,fecha_emision,vigencia,
	empleado_id,credencial_ant_id)
values (credencial_seq.nextval,'WQU68',1,'29/05/2020',0,7,NULL);
insert into credencial(credencial_id,folio,num_emision,fecha_emision,vigencia,
	empleado_id,credencial_ant_id)
values (credencial_seq.nextval,'HHS36',1,'14/12/2020',1,9,NULL);
insert into credencial(credencial_id,folio,num_emision,fecha_emision,vigencia,
	empleado_id,credencial_ant_id)
values (credencial_seq.nextval,'OZM45',1,'23/03/2021',1,5,NULL);
insert into credencial(credencial_id,folio,num_emision,fecha_emision,vigencia,
	empleado_id,credencial_ant_id)
values (credencial_seq.nextval,'LKL07',1,'28/04/2021',1,11,NULL);
insert into credencial(credencial_id,folio,num_emision,fecha_emision,vigencia,
	empleado_id,credencial_ant_id)
values (credencial_seq.nextval,'TER00',1,'06/01/2022',0,12,NULL);
insert into credencial(credencial_id,folio,num_emision,fecha_emision,vigencia,
	empleado_id,credencial_ant_id)
values (credencial_seq.nextval,'CTX30',1,'17/01/2022',1,6,NULL);
insert into credencial(credencial_id,folio,num_emision,fecha_emision,vigencia,
	empleado_id,credencial_ant_id)
values (credencial_seq.nextval,'INW96',1,'21/02/2022',1,10,NULL);
insert into credencial(credencial_id,folio,num_emision,fecha_emision,vigencia,
	empleado_id,credencial_ant_id)
values (credencial_seq.nextval,'BDU02',2,'21/10/2019',0,4,2004);
insert into credencial(credencial_id,folio,num_emision,fecha_emision,vigencia,
	empleado_id,credencial_ant_id)
values (credencial_seq.nextval,'LKE72',2,'18/02/2021',1,7,2006);
insert into credencial(credencial_id,folio,num_emision,fecha_emision,vigencia,
	empleado_id,credencial_ant_id)
values (credencial_seq.nextval,'HOW48',3,'05/07/2018',1,4,2013);
insert into credencial(credencial_id,folio,num_emision,fecha_emision,vigencia,
	empleado_id,credencial_ant_id)
values (credencial_seq.nextval,'POL14',2,'29/05/2022',1,12,2010);

--
-- registros tabla: registro (12)
--
insert into registro(empleado_id,foto,huella_p_izq,huella_p_der,huella_i_izq,
	huella_i_der,huella_m_izq,huella_m_der,huella_a_izq,huella_a_der,
	huella_men_izq,huella_men_der)
values(1,empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),
empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob());
insert into registro(empleado_id,foto,huella_p_izq,huella_p_der,huella_i_izq,
	huella_i_der,huella_m_izq,huella_m_der,huella_a_izq,huella_a_der,
	huella_men_izq,huella_men_der)
values(2,empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),
empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob());
insert into registro(empleado_id,foto,huella_p_izq,huella_p_der,huella_i_izq,
	huella_i_der,huella_m_izq,huella_m_der,huella_a_izq,huella_a_der,
	huella_men_izq,huella_men_der)
values(3,empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),
empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob());
insert into registro(empleado_id,foto,huella_p_izq,huella_p_der,huella_i_izq,
	huella_i_der,huella_m_izq,huella_m_der,huella_a_izq,huella_a_der,
	huella_men_izq,huella_men_der)
values(4,empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),
empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob());
insert into registro(empleado_id,foto,huella_p_izq,huella_p_der,huella_i_izq,
	huella_i_der,huella_m_izq,huella_m_der,huella_a_izq,huella_a_der,
	huella_men_izq,huella_men_der)
values(5,empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),
empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob());
insert into registro(empleado_id,foto,huella_p_izq,huella_p_der,huella_i_izq,
	huella_i_der,huella_m_izq,huella_m_der,huella_a_izq,huella_a_der,
	huella_men_izq,huella_men_der)
values(6,empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),
empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob());
insert into registro(empleado_id,foto,huella_p_izq,huella_p_der,huella_i_izq,
	huella_i_der,huella_m_izq,huella_m_der,huella_a_izq,huella_a_der,
	huella_men_izq,huella_men_der)
values(7,empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),
empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob());
insert into registro(empleado_id,foto,huella_p_izq,huella_p_der,huella_i_izq,
	huella_i_der,huella_m_izq,huella_m_der,huella_a_izq,huella_a_der,
	huella_men_izq,huella_men_der)
values(8,empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),
empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob());
insert into registro(empleado_id,foto,huella_p_izq,huella_p_der,huella_i_izq,
	huella_i_der,huella_m_izq,huella_m_der,huella_a_izq,huella_a_der,
	huella_men_izq,huella_men_der)
values(9,empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),
empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob());
insert into registro(empleado_id,foto,huella_p_izq,huella_p_der,huella_i_izq,
	huella_i_der,huella_m_izq,huella_m_der,huella_a_izq,huella_a_der,
	huella_men_izq,huella_men_der)
values(10,empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),
empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob());
insert into registro(empleado_id,foto,huella_p_izq,huella_p_der,huella_i_izq,
	huella_i_der,huella_m_izq,huella_m_der,huella_a_izq,huella_a_der,
	huella_men_izq,huella_men_der)
values(11,empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),
empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob());
insert into registro(empleado_id,foto,huella_p_izq,huella_p_der,huella_i_izq,
	huella_i_der,huella_m_izq,huella_m_der,huella_a_izq,huella_a_der,
	huella_men_izq,huella_men_der)
values(12,empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),
empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob(),empty_blob());

--
-- registros tabla: beneficiario (18)
--
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Patricia','Felix','Stredder',100.00,'Hermana',
	1);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Damián','Rosales','Arriaga',60.00,'Esposo',2);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Timoteo','Carrillo','Pena',100.00,'Padre',3);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Federica','Vega','Llanos',100.00,'Esposa',4);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Maria','Fuerte','López',100.00,'Abuela',5);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Rodrigo','Nava','Hernández',100.00,'Hermano',
	6);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Juan','Yañez','Gómez',100.00,'Amigo',7);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Mario','Venegas','Mora',33.33,'Hijo',8);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Rocío','Fernández','Quesada',76.12,'Tia',9);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Ernesto','Guardia','Ramos',100.00,'Amigo',10);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Renata','Zarate','Mena',100.00,'Hija',11);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Teresa','Juárez','Pérez',100.00,'Madre',12);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Jorge','Rosales','González',20.00,'Hijo',2);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Viridiana','Rosales','González',20.00,'Hija',
	2);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Roberto','Díaz','Fernández',23.88,'Primo',9);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Lorenzo','Vázquez','Camacho',33.33,'Amigo',8);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Azucena','Carrera','Venegas',10.14,'Sobrina',
	8);
insert into beneficiario(beneficiario_id,nombre,ap_paterno,ap_materno,
	porcentaje,parentesco,empleado_id)
values(beneficiario_seq.nextval,'Pedro','Venegas','Salgado',23.2,'Hermano',8);

--
-- registros tabla: incidencia (5)
--
insert into incidencia(folio,empleado_id,fecha_registro,descripcion)
values(1,3,'17/05/2019','El empleado se quedó dormido dentro de la jornada.');
insert into incidencia(folio,empleado_id,fecha_registro,descripcion)
values(2,11,'20/02/2020','El empleado se fracturó la mano dentro de su jornada
	laboral.');
insert into incidencia(folio,empleado_id,fecha_registro,descripcion)
values(3,3,'08/12/2020','El empleado no se presentó a la jornada sin previa 
	justificación.');
insert into incidencia(folio,empleado_id,fecha_registro,descripcion)
values(4,5,'11/11/2021','El empleado se tomó más tiempo de comida que el 
	otorgado.');
insert into incidencia(folio,empleado_id,fecha_registro,descripcion)
values(5,6,'28/05/2022','Se vio al empleado platicando y no haciendo su 
	trabajo.');

--
-- registros tabla: historico_puesto (15)
--
insert into historico_puesto(historico_puesto_id,fecha_puesto,empleado_id,
	puesto_id)
values (historico_puesto_seq.nextval,'05/07/2018',1,11);
insert into historico_puesto(historico_puesto_id,fecha_puesto,empleado_id,
	puesto_id)
values (historico_puesto_seq.nextval,'02/01/2019',3,1);
insert into historico_puesto(historico_puesto_id,fecha_puesto,empleado_id,
	puesto_id)
values (historico_puesto_seq.nextval,'13/09/2019',4,12);
insert into historico_puesto(historico_puesto_id,fecha_puesto,empleado_id,
	puesto_id)
values (historico_puesto_seq.nextval,'01/09/2019',8,4);
insert into historico_puesto(historico_puesto_id,fecha_puesto,empleado_id,
	puesto_id)
values (historico_puesto_seq.nextval,'01/06/2020',1,2);
insert into historico_puesto(historico_puesto_id,fecha_puesto,empleado_id,
	puesto_id)
values (historico_puesto_seq.nextval,'01/01/2020',2,9);
insert into historico_puesto(historico_puesto_id,fecha_puesto,empleado_id,
	puesto_id)
values (historico_puesto_seq.nextval,'15/08/2020',4,13);
insert into historico_puesto(historico_puesto_id,fecha_puesto,empleado_id,
	puesto_id)
values (historico_puesto_seq.nextval,'28/05/2020',7,7);
insert into historico_puesto(historico_puesto_id,fecha_puesto,empleado_id,
	puesto_id)
values (historico_puesto_seq.nextval,'08/12/2020',9,6);
insert into historico_puesto(historico_puesto_id,fecha_puesto,empleado_id,
	puesto_id)
values (historico_puesto_seq.nextval,'19/03/2021',5,10);
insert into historico_puesto(historico_puesto_id,fecha_puesto,empleado_id,
	puesto_id)
values (historico_puesto_seq.nextval,'15/08/2021',4,5);
insert into historico_puesto(historico_puesto_id,fecha_puesto,empleado_id,
	puesto_id)
values (historico_puesto_seq.nextval,'20/04/2021',11,8);
insert into historico_puesto(historico_puesto_id,fecha_puesto,empleado_id,
	puesto_id)
values (historico_puesto_seq.nextval,'11/01/2022',6,3);
insert into historico_puesto(historico_puesto_id,fecha_puesto,empleado_id,
	puesto_id)
values (historico_puesto_seq.nextval,'17/02/2022',10,5);
insert into historico_puesto(historico_puesto_id,fecha_puesto,empleado_id,
	puesto_id)
values (historico_puesto_seq.nextval,'01/01/2022',12,3);

--
-- registros tabla: empleado_nomina (20)
--
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,51028.32,1,1);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,20095.99,2,1);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,21033.87,3,1);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,30654.86,4,9);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,8111.05,5,6);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,10736.22,6,2);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,5852.35,7,1);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,8192.11,9,9);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,31942.99,9,3);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,38949,10,2);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,8500.14,11,8);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,6359.80,12,6);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,50632.03,4,6);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,7004.55,7,5);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,56229.00,1,6);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,19444.13,2,6);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,8776.90,11,2);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,40800.21,10,6);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,20000.40,9,6);
insert into empleado_nomina(empleado_nomina_id,importe,empleado_id,nomina_id)
values(empleado_nomina_seq.nextval,23165.00,3,5);

--
-- registros tabla: empleado_nomina_concepto (5)
-- del 1 al 7 son del misma quincena nomina 6
-- del 8 al 12 son varios conceptos de 1 empleado
-- del 13 al 15 son varios conceptos de otro empleado
-- del 16 al 17 son varios conceptos de otro empleado
-- del 18 al 21 son conceptos de nominas diferentes 
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,8111.05,5,1);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,8908.53,12,1);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,41642.88,13,1);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,62042,15,1);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,22023.00,16,1);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,41642.88,18,1);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,39909.10,19,1);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,39909.10,8,1);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,4789.09,8,10);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,6838.32,8,3);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,6784.55,8,6);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,4311.41,8,7);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,47890.93,10,1);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,10974.83,10,5);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,10057.09,10,6);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,22023.00,2,1);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,1927.01,2,6);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,7427,3,4);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,890.05,6,9);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,8002.52,9,4);
insert into empleado_nomina_concepto(empleado_nomina_concepto_id,importe,
	empleado_nomina_id,concepto_pago_id)
values(empleado_nomina_concepto_seq.nextval,11723.60,20,8);

commit;