﻿CREATE OR REPLACE FUNCTION DEVELOPER.if_update(P_NEW IN VARCHAR2,
                                     P_OLD IN VARCHAR2) RETURN BOOLEAN IS
BEGIN
  IF P_NEW IS NULL AND P_OLD IS NULL THEN
    RETURN (FALSE);
  ELSIF P_NEW = P_OLD THEN
    RETURN(FALSE);
  ELSIF P_NEW != P_OLD THEN
    RETURN(TRUE);
  ELSIF P_NEW IS NOT NULL AND P_OLD IS NULL THEN
    RETURN(TRUE);
  ELSIF P_NEW IS NULL AND P_OLD IS NOT NULL THEN
    RETURN(TRUE);
  END IF;
END;
/

