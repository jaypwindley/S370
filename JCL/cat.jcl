//CAT      JOB    'COPY OUT',
//     CLASS=A,MSGCLASS=A,MSGLEVEL=(1,1)
//         EXEC   PGM=IEBGENER
//SYSIN    DD     DUMMY
//SYSPRINT DD     DUMMY
//SYSUT1   DD     DSN=WNDL.DATA.RND1,DISP=SHR
//SYSUT2   DD     SYSOUT=A
//
