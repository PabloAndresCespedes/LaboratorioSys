CREATE OR REPLACE TRIGGER DEVELOPER."USUARIOS_BIU"
    before insert or update
    on usuarios
    for each row
begin
    :new.nombre   := upper(:new.nombre);
    :new.apellido := upper(:new.apellido);
    :new.login    := upper(:new.login);

    if inserting then
      :new.codigo := general.sgte_codigo(in_tabla =>  'USUARIOS');
      :new.pass   := encripta_password(p_user_name => :new.login, p_password => coalesce(:new.pass, 'abc123'));
    end if;

    if updating and if_update(P_NEW => :new.pass, P_OLD => :old.pass) then
      :new.pass := encripta_password(p_user_name => :new.login, p_password => :new.pass);
    end if;
    
end usuarios_biu;
/

