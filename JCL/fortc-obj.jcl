//***********************************************************************
//* COMPILE FORTRAN SOURCE TO OBJECT LIBRARY
//*
//* (1) PDS MUST ALREADY EXIST
//* (2) MEMBER CANNOT ALREADY EXIST
//*
//%STPNAME        EXEC  FORTHC,REGION.FORT=384K
//FORT.SYSLIN     DD    DSN=%PDS(%MEM),DISP=MOD
//FORT.SYSABEND   DD    SYSOUT=A
//FORT.SYSIN      DD    *
