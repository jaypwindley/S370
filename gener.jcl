//FIGGIS   JOB  'DS POPULATE',
//      CLASS=A,MSGCLASS=A,MSGLEVEL=(1,1)
//         EXEC PGM=IEBGENER
//SYSIN    DD   DUMMY
//SYSPRINT DD   SYSOUT=A
//SYSUT1   DD   DSN=WNDL.DATA.RND1,DISP=SHR
//SYSUT2   DD   SYSOUT=A
//*SYSUT2   DD   DSN=WNDL.DATA.RND1,DISP=(MOD,KEEP)
//*      DCB=(RECFM=FB,LRECL=16,BLKSIZE=960),
//*      UNIT=SYSDA,SPACE=(TRK,(3,3),RLSE)
//
