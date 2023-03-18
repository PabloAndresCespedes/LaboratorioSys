--------------------------------------------------------
--  File created - Saturday-March-18-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body GEN_GENERAL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "DEVELOPER"."GEN_GENERAL" is

  function get_next_code(
    in_empresa in number := null
  , in_suc     in number := null
  , in_tabla   in varchar2
  )return number is
  pragma autonomous_transaction;
  l_code number;
  begin
    execute immediate '
    select coalesce( max( codigo ), 0 ) + 1
    from '||in_tabla||
    case 
      when in_empresa is not null then
       ' where empresa_id = '||in_empresa
      else
       ''
    end
    ||
    case
      when in_suc is not null then
    ' and sucursal_id = '||in_suc
    else
      ''
    end
    into l_code;

    return l_code;

  end;
  --
  FUNCTION encripta_password
  (in_user in varchar2,
   in_pass in varchar2
  )return varchar2 is
  l_new_pass varchar2( 4000 char );
  k_salt  constant varchar2(45 char) := '[hdwHU#KaS55s#$%Q:j>Hym.YJalsdslknkY)(h.KZ?q';
  begin
      SELECT standard_hash(
             substr(k_salt, 7, 4)||  in_pass ||in_user||substr(k_salt, 5, 9)
             ,'SHA512'
            )
      INTO L_NEW_PASS
      FROM DUAL;
    return l_new_pass;
  end encripta_password;
end gen_general;

/
