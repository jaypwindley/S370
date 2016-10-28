//***********************************************************************
//* RUN FORTRAN PROGRAM FROM LIBRARY
//*
//* FT05F001 FOR INPUT MUST BE IDENTIFIED IN JCL IMMEDIATELY
//* FOLLOWING
//*
//STEPLIB    DD     DSN=%LIB,DISP=(OLD,KEEP)
//%STPNAME   EXEC   PGM=%PGM
//FT06F001   DD     SYSOUT=A
//SYSPRINT   DD     SYSOUT=A
