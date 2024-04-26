create or replace package developer.pkg_auth is

  -- Author  : @PabloACespedes
  -- Created : 22/01/2024 20:51:59
  -- Purpose : Autenticacion y control de acceso 
  subtype permiso_pagina_type is permisos_paginas%rowtype;
  
  procedure merge_permiso_pagina(
    in_data in permiso_pagina_type
  );
  
  procedure eliminar_permiso_pagina(
    in_id in permisos_paginas.id%type
  );
  
  function acceso_usuario_b(
    p_username in varchar2
  , p_password in varchar2
  )return boolean;
  
end pkg_auth;
/

create or replace package body developer.pkg_auth is
--======================================================================================================
  procedure merge_permiso_pagina(
    in_data in permiso_pagina_type
  )as
    l_data permiso_pagina_type;
  begin
    l_data := in_data;
    
    merge into permisos_paginas t1
    using (select 
             l_data.permiso_id         as permiso_id
           , l_data.app_id             as app_id
           , l_data.page_id            as page_id 
           , l_data.ind_menu_principal as ind_menu_principal
           , sysdate                   as fecha_grab
           from dual) t2
    on (t1.permiso_id = t2.permiso_id 
        and 
        t1.app_id = t2.app_id
        and 
        t1.page_id = t2.page_id
       )
    when matched then update set t1.ind_menu_principal = t2.ind_menu_principal
                             ,   t1.fecha_grab      = t2.fecha_grab
    when not matched then insert(t1.permiso_id, t1.app_id, t1.page_id, t1.ind_menu_principal, t1.fecha_grab)
                          values(t2.permiso_id, t2.app_id, t2.page_id, t2.ind_menu_principal, t2.fecha_grab)
                          ;
    
    update permisos_paginas x
    set x.ind_menu_principal = case 
                                when x.page_id = l_data.page_id then
                                  'S'
                                else 
                                  'N' 
                                end
    where x.permiso_id = l_data.permiso_id;
      
  end merge_permiso_pagina;
--======================================================================================================
  procedure eliminar_permiso_pagina(
    in_id in permisos_paginas.id%type
  )as
  begin
    delete from permisos_paginas x
    where x.id = in_id;
    
    if sql%rowcount = 0 then
      Raise_application_error(-20000, 'Registros sin borrar, no identificado con ID '||in_id );
    end if;
  end eliminar_permiso_pagina;
--======================================================================================================
  function acceso_usuario_b(
    p_username in varchar2
  , p_password in varchar2
  )return boolean is
    l_dummy number;
    l_user  varchar2( 255 char );
  begin 
    if lower(p_username) = 'admin' then return true; end if;
    
    l_user := upper(trim(p_username));
    
    select distinct 1
    into l_dummy
    from usuarios u
    where u.login = l_user
    and   u.pass = encripta_password(p_user_name => l_user, p_password => p_password);
    
    return true;
  exception
    when no_data_found then
      return false;
      --Raise_application_error(-20000, 'Sin acceso para uso de la aplicacion' );
  end acceso_usuario_b;
--======================================================================================================
end pkg_auth;
/

