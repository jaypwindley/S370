//***********************************************************************
//* LIST CONTENTS OF VOLUME
//*
//%STPNAME  EXEC   PGM=IEHLIST
//VOLDD     DD     UNIT=SYSDA,VOL=SER=%VOLSER,DISP=OLD
//SYSPRINT  DD     SYSOUT=A
//SYSIN     DD     *
  LISTVTOC  VOL=SYSDA=%VOLSER,FORMAT
/*
