create or replace package gen_general is

  -- Author  : CESPE
  -- Created : 17-Mar-23 6:41:54 PM
  -- Purpose : utilitarios generales de software solutions
  
  function get_next_code(
    in_empresa in number := NULL
  , in_suc     in number := NULL
  , in_tabla   in varchar2
  )return number;
  
  FUNCTION encripta_password
  (in_user in varchar2,
   in_pass in varchar2
  )return varchar2;
  
end gen_general;