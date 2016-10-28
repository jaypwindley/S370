//***********************************************************************
//* LIST CONTENTS OF PARTITIONED DATA SET
//*
//%STPNAME  EXEC   PGM=IEHLIST
//VOLDD     DD     UNIT=SYSDA,VOL=SER=%VOLSER,DISP=OLD
//SYSPRINT  DD     SYSOUT=A
//SYSIN     DD     *
  LISTPDS   DSN=(%PDS),VOL=SYSDA=%VOLSER,FORMAT
/*
