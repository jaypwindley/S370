//JPWXXX JOB 'Standalone assembly',
//           CLASS=A,
//           MSGCLASS=A,
//           MSGLEVEL=(1,1)
//*
//*-------------------------------------------------------------------
//*
//* Generic JCL for assembling, linking, and running standalone
//* programs.
//*
//*-------------------------------------------------------------------
//*
//STEP1      EXEC ASMFCLG
//ASM.SYSUT1 DD UNIT=SYSDA
//ASM.SYSUT2 DD UNIT=SYSDA
//ASM.SYSUT3 DD UNIT=SYSDA
//ASM.SYSGO  DD UNIT=SYSDA
//ASM.SYSIN  DD *
**********************************************************************
*                                                                    *
*     Routine:                                                       *
*     Purpose:                                                       *
*     Author:                                                        *
*     Date:                                                          *
*     Revision:   A                                                  *
*                                                                    *
**********************************************************************
*                                                                    *
* Parms:                                                             *
*                                                                    *
* Return:                                                            *
*                                                                    *
**********************************************************************
*
R0       EQU     0	
R1       EQU     1
R2       EQU     2
R3       EQU     3
R4       EQU     4
R5       EQU     5
R6       EQU     6
R7       EQU     7
R8       EQU     8
R9       EQU     9
R10      EQU     10
R11      EQU     11
R12      EQU     12
R13      EQU     13
R14      EQU     14
R15      EQU     15
*
**********************************************************************
*
*  CSECT:
*
* FILEASM  START	0
* 	 PRINT	NOGEN
* 	 USING	FILEASM,15
* 	 SAVE	(14,12)
* 	 LA	R13,SAVE
* 	 WTO	'FIGGIS WAS HERE'
* 	 RETURN	(14,12),RC=0
* SYSPRINT DCB 	DSORG=PS,MACRF=PM,DDNAME=SYSPRINT,
* 	       RECFM=FA,LRECL=133,BLKSIZE=133
* 	 DS	0H
* OUTAREA  DS	CL133' HELLO WORLD'
* SAVE	 DS	18F
*          END
*
HELLO	 CSECT
BEGIN    SAVE  (14,12)            SAVE INPUT REGISTERS
         LR    12,15              WHERE ARE WE?
         USING HELLO,12
         ST    13,SAVE+4          SAVE OLD SAVE AREA ADDRESS
         LA    11,SAVE            POINT TO NEW SAVE AREA
         ST    11,8(13)           IN OLD SAVE AREA
         LR    13,11              MOVE SAVE AREA ADDRESS
*
	 OPEN	(SYSPRINT,(EXTEND))
         PUT   	SYSPRINT
	 LR	R3,R1
	 MVC	0(133,R3),HELLOMSG
	 CLOSE	SYSPRINT
*
         L     13,SAVE+4          GET OLD SAVE AREA BACK
         RETURN (14,12),RC=0      TO THE OPERATING SYSTEM
*
* FILE AND WORK AREA DEFINITIONS
*
SAVE     DS    18F                LOCAL SAVE AREA
SYSPRINT DCB   DSORG=PS,MACRF=(GL,PL),DDNAME=SYSPRINT,                 X
               RECFM=F,LRECL=133,BLKSIZE=133
HELLOMSG DC    CL133' HELLO, WORLD!'
         END   BEGIN
/*
//GO.SYSPRINT DD SYSOUT=A
//
