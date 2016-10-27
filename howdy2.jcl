//FIGGIS JOB 'FORTRAN STANDALONE',
//           CLASS=A,
//           MSGCLASS=A,
//           MSGLEVEL=(1,1)
//********************************************************************
//*
//* Boilerplate JCL for standalone FORTRAN compilation and execution.
//*
//********************************************************************
//STEP2          EXEC   FORTHCLG
//FORT.SYSLIN    DD     UNIT=SYSDA
//FORT.SYSABEND  DD     SYSOUT=A
//FORT.SYSIN     DD     *
      CALL HOWDY
      STOP
      END
/*
//LKED.JAYLIB    DD     DSN=WNDL.BAR,DISP=(OLD,KEEP)
//LKED.SYSIN     DD     *
  INCLUDE JAYLIB(HOWDY)
//GO.SYSPRINT    DD     SYSOUT=A
//
