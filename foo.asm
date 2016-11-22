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
FILEASM CSECT
	USING	FILEASM,15
	SAVE	(14,12)
        OPEN	(OUTDCB,(OUTPUT))
        MVI	OUTCARR,C' '
        MVC	OUTLINE(80),MESG
        PUT	OUTDCB,OUTAREA
        CLOSE	(OUTDCB)
	RETURN	(14,12),RC=0
OUTDCB  DCB DSORG=IS,MACRF=(PM),DDNAME=SYSPRINT
	DS	0H
MESG	DS	CL80'HELLO WORLD'
OUTAREA DS	0CL133
OUTCARR DC	CL1' '
OUTLINE DC	CL132' '
        END
/*
//GO.SYSPRINT  DD    SYSOUT=A
//
