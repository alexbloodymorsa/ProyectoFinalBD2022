--@Autor                Alejandro Barreiro Valdez y Jessica Zepeda Baeza
--@Fecha de creación:   3/06/22
--@Descripción:         Creación de Usuarios

whenever sqlerror exit rollback
Prompt Proporcionar el password del usuario sys:
connect sys as sysdba

Prompt Creando rol_admin
create role rol_admin;
grant create table, create session, create sequence, 
  create procedure, create public synonym, 
  create synonym, create trigger, create view to rol_admin;

Prompt Creando rol_invitado
create role rol_invitado;
grant create session, create synonym to rol_invitado;

Prompt Creando usuario bz_proy_admin
create user bz_proy_admin identified by proyecto quota unlimited on users;
grant rol_admin to bz_proy_admin;


Prompt Creando usuario bz_proy_invitado
create user bz_proy_invitado identified by proyecto quota unlimited on users;
grant rol_invitado to bz_proy_invitado;

Prompt Listo!
disconnect