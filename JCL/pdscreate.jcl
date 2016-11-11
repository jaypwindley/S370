//***********************************************************************
//* CREATE A NEW PARTITIONED DATASET
//*
//%STPNAME   EXEC  PGM=IEFBR14
//PDS        DD    DSN=%PDS,
//      DISP=(NEW,CATLG),
//      DCB=(RECFM=FB,LRECL=80,BLKSIZE=400,DSORG=PO),
//      UNIT=SYSDA,VOL=SER=%VOLSER,
//      SPACE=(%PHYS,(%SIZE,%ISIZE,10))
