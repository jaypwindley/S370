//FIGGIS JOB 'FORTRAN STANDALONE',
//           CLASS=A,
//           MSGCLASS=A,
//           MSGLEVEL=(1,1)
//********************************************************************
//*
//* Boilerplate JCL for standalone FORTRAN compilation and execution.
//*
//********************************************************************
//JOBLIB     DD     DSN=WNDL.BAR,DISP=(OLD,KEEP)
//STEP2      EXEC   PGM=HELLO
//FT06F001   DD     SYSOUT=A
//SYSPRINT   DD     SYSOUT=A
//
