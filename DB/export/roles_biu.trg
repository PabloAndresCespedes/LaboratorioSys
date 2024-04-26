CREATE OR REPLACE TRIGGER DEVELOPER."ROLES_BIU"
    before insert or update
    on roles
    for each row
begin
  :new.descripcion := upper(:new.descripcion);
end roles_biu;
/

