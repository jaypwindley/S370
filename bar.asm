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
HELLO	 CSECT
	 PRINT NOGEN
BEGIN    SAVE  (14,12)
         LR    12,15
         USING HELLO,12
         ST    13,SAVE+4
         LA    11,SAVE
         ST    11,8(13)
         LR    13,11
*
	 OPEN	(SYSPRINT,(EXTEND))
	 OPEN	(SYSIN,(INPUT))
	 SR     R4,R4
RDSUBJ	 GET	SYSIN
	 LR	R3,R1	
	 USING	INPUT,R3
	 MVC	LNAME(8),LSNAME
	 DROP   R3
         PUT   	SYSPRINT,OUTLN
	 LA     R4,1(,R4)
	 B	RDSUBJ
INDONE	 PUT    SYSPRINT,BLANK
*	 CVD	R4,CNTPK
	 MVC	ENDCNT(3),ENDPAT
	 ED	ENDCNT,CNTPK
	 PUT	SYSPRINT,ENDMSG
	 CLOSE	SYSIN
	 CLOSE	SYSPRINT
*
         L     13,SAVE+4
         RETURN (14,12),RC=0
*
*
*
SAVE     DS    18F
*
* FILES
*
SYSPRINT DCB   DSORG=PS,                                               +
	       MACRF=(GM,PM),                                          +
               DDNAME=SYSPRINT,                                        +
               RECFM=F,                                                +
               LRECL=133,                                              +
               BLKSIZE=133
SYSIN	 DCB   DSORG=PS,                                               *
               MACRF=(GL,PL),                                          *
	       EODAD=INDONE,                                           *
               DDNAME=SYSIN,                                           *
               RECFM=F,                                                *
               LRECL=80
	 DS    0F
OUTLN    DS    0CL133
	 DC    CL20'SUBJECT LAST NAME: '
LNAME	 DS    CL8
	 DS    CL104
	 DS    0F
BLANK	 DC    CL133' '
CNTPK	 DC    PL2'066'
ENDPAT   DC    XL4'40202021'
	 DS    0F
ENDMSG	 DS    0CL133
	 DC    CL17'*** PROGRAM ENDS-'
ENDCNT	 DS    CL4
	 DC    CL13' RECORDS READ'
	 DS    CL133
*
INPUT	 DSECT
LSNAME   DS    CL8
	 END
         END   BEGIN
/*
//GO.SYSPRINT DD SYSOUT=A
WINDLEY
JELICO
FIFE
TOOLONGANAME
//
