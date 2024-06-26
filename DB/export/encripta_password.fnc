﻿CREATE OR REPLACE FUNCTION DEVELOPER.encripta_password
  (p_user_name in varchar2,
   p_password  in varchar2)
return varchar2
is
  l_password varchar2(255);
  l_salt  varchar2(255) := '[hdwHU#KaSh@Q:j>Hym.YJ#c%pnkY)(h.KZ?q';
begin
    l_password := dbms_crypto.hash(utl_raw.cast_to_raw (p_password ||
                                      substr(l_salt,8,7) ||
                                      p_user_name ||
                                      substr(l_salt,1,2))
                                   ,2);
    return l_password;
end encripta_password;
/

