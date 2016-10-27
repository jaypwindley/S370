//FIGGIS JOB 'HELLO',
//           CLASS=A,
//           MSGCLASS=A,
//           MSGLEVEL=(1,1)
//********************************************************************
//         EXEC   PGM=IDCAMS
//SYSPRINT DD     SYSOUT=A
//SYSIN    DD     *
  DELETE WNDL.BAR(HELLO)
/*
//********************************************************************
//STP2            EXEC  FORTHCL,REGION.FORT=384K
//FORT.SYSLIN     DD    UNIT=SYSDA
//FORT.SYSABEND   DD    SYSOUT=A
//FORT.SYSIN      DD    *
      WRITE(6,900)
 900  FORMAT(' HELLO, WORLD')
      STOP
      END
/*
//LKED.SYSLMOD    DD   DSN=WNDL.BAR(HELLO),DISP=MOD
//
