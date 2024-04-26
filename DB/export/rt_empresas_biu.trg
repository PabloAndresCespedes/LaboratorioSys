﻿create or replace trigger developer.rt_empresas_biu
    before insert or update  
    on rt_empresas 
    for each row 
begin 
    if inserting then 
        :new.creado := sysdate; 
        :new.creado_por := coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 
    :new.modificado := sysdate; 
    :new.modificado_por := coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
end rt_empresas_biu;
/
