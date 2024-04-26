CREATE OR REPLACE TRIGGER DEVELOPER."ROLES_AIU"
  after insert or update
  on ROLES
  for each row
begin
  -- ELIMINAMOS TODAS LAS REFERENCIAS ANTERIORES DEL ROL Y PERMISO
  delete from roles_permisos rp
  where rp.rol_id = :new.id;

  -- agregamos las referencias
  insert into roles_permisos(rol_id
                            ,permiso_id
                            )
  select :new.id
  ,      column_value
  from table(
    apex_string.split_numbers(p_str => :new.permiso_ids, p_sep => ':')
  );

end ROLES_AIU;
/

