//FIGGIS   JOB  'DS POPULATE',
//      CLASS=A,MSGCLASS=A,MSGLEVEL=(1,1)
//         EXEC PGM=IEBGENER
//SYSIN    DD   *
  GENERATE MAXFLDS=1
  RECORD   FIELD=(80,1,,1)
//SYSPRINT DD   SYSOUT=A
//SYSUT1   DD   *
BORKO HELLO
//SYSUT2   DD   DSN=WNDL.FOO(BAR),DISP=SHR
//
