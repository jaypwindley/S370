//FIGGIS JOB 'HOWDY',
//           CLASS=A,
//           MSGCLASS=A,
//           MSGLEVEL=(1,1)
//********************************************************************
//         EXEC   PGM=IDCAMS
//SYSPRINT DD     SYSOUT=A
//SYSIN    DD     *
  DELETE WNDL.BAR(HOWDY)
/*
//********************************************************************
//STP2            EXEC  FORTHC,REGION.FORT=384K
//FORT.SYSLIN     DD    DSN=WNDL.BAR(HOWDY),DISP=MOD
//FORT.SYSABEND   DD    SYSOUT=A
//FORT.SYSIN      DD    *
      SUBROUTINE HOWDY
      WRITE(6,900)
 900  FORMAT(' HOWDY, WORLD')      
      STOP
      END
/*
//
