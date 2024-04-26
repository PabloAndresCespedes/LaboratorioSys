CREATE OR REPLACE TRIGGER DEVELOPER."USUARIOS_AIU"
  after insert or update
  on USUARIOS
  for each row
begin
  -- eliminamos referencias anteriores
  delete from roles_usuarios ru
  where ru.usuario_id = :new.id;

  delete from usuarios_empresas ue
  where ue.usuario_id = :new.id;

  -- agregamos nuevas referencias
  insert into roles_usuarios(usuario_id
                            ,rol_id
                            )
  select :new.id
  ,      column_value
  from table(
    apex_string.split_numbers(p_str => :new.rol_ids, p_sep => ':')
  );

  insert into usuarios_empresas(usuario_id
                               ,empresa_id
                            )
  select :new.id
  ,      column_value
  from table(
    apex_string.split_numbers(p_str => :new.empresa_ids, p_sep => ':')
  );

end USUARIOS_AIU;
/

