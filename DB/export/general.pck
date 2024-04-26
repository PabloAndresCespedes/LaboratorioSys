create or replace package developer.GENERAL is

  -- Author  : @PabloACespedes
  -- Created : 16/09/2023 18:23:27
  -- Purpose : Utilitarios y demas para developers

  function sgte_codigo(
    in_tabla in varchar2
  )return number;

end GENERAL;
/

create or replace package body developer.GENERAL is
--======================================================================================================
  function sgte_codigo(
    in_tabla in varchar2
  )return number is
    pragma autonomous_transaction;
    l_query varchar2( 255 char );
    l_r     number;
  begin
    l_query := 'select coalesce(max(codigo),0)+1 from '||in_tabla;

    execute immediate l_query into l_r;

    return l_r;
  end sgte_codigo;
--======================================================================================================
end GENERAL;
/

