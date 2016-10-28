//**********************************************************************
//* DELETE MEMBER OF PARTITIONED DATA SET
//*
//%STPNAME  EXEC   PGM=IDCAMS
//SYSPRINT  DD     SYSOUT=A
//SYSABEND  DD     SYSOUT=A
//SYSIN     DD     *
  DELETE %PDS(%MEM)
/*
