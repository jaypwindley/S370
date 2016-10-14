//FIGGIS JOB 'FORTRAN STANDALONE',
//           CLASS=A,
//           MSGCLASS=A,
//           MSGLEVEL=(1,1)
//********************************************************************
//*
//* Boilerplate JCL for standalone FORTRAN compilation and execution.
//*
//********************************************************************
//STP1            EXEC  FORTHCLG,REGION.FORT=384K
//FORT.SYSLIN     DD    UNIT=SYSDA
//FORT.SYSABEND   DD    SYSOUT=A
//FORT.SYSIN      DD    *
