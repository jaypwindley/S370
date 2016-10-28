//JPWXXX JOB '',
//           CLASS=A,
//           MSGCLASS=A,
//           MSGLEVEL=(1,1)
//********************************************************************
//ERASE      EXEC PGM=IDCAMS
//SYSPRINT   DD   SYSOUT=A
//SYSIN      DD   *
  DELETE WNDL.BAR(IADD)
/*
//********************************************************************
//ASSY          EXEC ASMFC
//ASM.SYSUT1    DD   UNIT=SYSDA
//ASM.SYSUT2    DD   UNIT=SYSDA
//ASM.SYSUT3    DD   UNIT=SYSDA
//ASM.SYSPUNCH  DD   DSN=WNDL.BAR(IADD),DISP=MOD
//ASM.SYSIN     DD   *
*
**********************************************************************
*                                                                    *
*     Routine:    IADD                                               *
*     Purpose:    Add two integers                                   *
*     Author:     Jay Windley                                        *
*     Date:       2016 OCT 27                                        *
*     Revision:   A                                                  *
*                                                                    *
**********************************************************************
*                                                                    *
* Usage:         R1 points to arg list                               *
*                                                                    *
* Return:        Sum returned in R0                                  *
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
*  CSECT:    IADD
*
IADD     CSECT
         USING   IADD,15
         SAVE    (14,12)
         L       R2,0(R1)        ; ADDR OF FIRST ARG
         L       R3,0(R2)        ; LOAD FIRST ARG
         L       R2,4(R1)        ; ADDR OF SECOND ARG
         A       R3,0(R2)        ; ADD SECOND ARG TO FIRST
	 L       R2,8(R1)        ; ADDR OF THIRD ARG
	 ST      R3,0(R2)        ; STUFF SUM IN THIRD ARG
         RETURN  (14,12),RC=0
         END
/*
//
