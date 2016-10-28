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
      INTEGER*4 ISUM, FIRST, SECOND
      FIRST=3
      SECOND=4
      ISUM=42
      CALL IADD(FIRST,SECOND,ISUM)
      WRITE(6,900) ISUM
 900  FORMAT(' SUM = ', I4)
      STOP
      END
/*
//LKED.JAYLIB    DD     DSN=WNDL.BAR,DISP=(OLD,KEEP)
//LKED.SYSIN     DD     *
  INCLUDE JAYLIB(IADD)
//GO.SYSPRINT    DD     SYSOUT=A
//
