//***********************************************************************
//* DELETE CATALOGUED DATA SET
//*   - OMIT VOL=SER= FROM DD STATEMENT TO FORCE CATALOGUE LOOKUP
//*     WHEREUPON DELETE IMPLIES UNCATLG
//*
//%STPNAME   EXEC  PGM=IEFBR14
//DOOMED     DD    DSN=%DSN,
//      DISP=(OLD,DELETE),
//      UNIT=SYSDA
