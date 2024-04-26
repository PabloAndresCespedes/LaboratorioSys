create or replace trigger developer.lab_estudios_precios_biu
    before insert or update  
    on lab_estudios_precios 
    for each row 
begin 
    if inserting then 
        :new.creado := sysdate; 
        :new.creado_por := coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 
    :new.modificado := sysdate; 
    :new.modificado_por := coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
end lab_estudios_precios_biu;
/

