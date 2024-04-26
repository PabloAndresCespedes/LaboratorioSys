create or replace trigger developer.lab_pacientes_biu
    before insert or update  
    on lab_pacientes 
    for each row 
begin 
    if inserting then 
        :new.creado := sysdate; 
        :new.creado_por := coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    end if; 
    :new.modificado := sysdate; 
    :new.modificado_por := coalesce(sys_context('APEX$SESSION','APP_USER'),user); 
    :new.mail := lower(:new.mail); 
end lab_pacientes_biu;
/

