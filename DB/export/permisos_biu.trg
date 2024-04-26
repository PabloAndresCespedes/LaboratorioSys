CREATE OR REPLACE TRIGGER DEVELOPER."PERMISOS_BIU"
    before insert or update
    on permisos
    for each row
begin
    :new.descripcion := upper(:new.descripcion);

    if inserting then
      :new.codigo := general.sgte_codigo(in_tabla => 'PERMISOS');
    end if;
end permisos_biu;
/

