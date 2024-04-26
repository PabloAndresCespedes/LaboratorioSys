﻿CREATE OR REPLACE TRIGGER DEVELOPER."USUARIOS_EMPRESAS_BI"
  before insert
  on USUARIOS_EMPRESAS
  for each row
begin
  :new.id := USUARIOS_EMPRESAS_SEQ.nextval;
end USUARIOS_EMPRESAS_BI;
/

