C************************************************************************
C$$$      Library:  TIMELIB
C$$$      Purpose:  Time converstion routines
C$$$      Date:     2016OCT13
C$$$      Revision: A
C************************************************************************      
      
C------------------------------------------------------------------------
C     Routine:      DECHRS
C     Purpose:      Convert hours, minutes, and seconds into decimal
C                   hours
C     Input Parms:  HRS hours
C                   MINS minutes
C                   SECS seconds
C     Output Parms: Equivalent hours as REAL(4)
C     
      REAL FUNCTION DECHRS (HRS,MINS,SECS)
      INTEGER   HRS
      INTEGER   MINS
      REAL      SECS
      DECHRS=HRS+(MINS/60.)+(SECS/3600.)
      RETURN
      END

C------------------------------------------------------------------------
C     Routine:      DIFFSECS
C     Purpose:      
C     Input Parms:  FIRST earlier time in decimal hours
C                   LAST later time in decimal hours
C     Output Parms: difference in seconds as REAL(4)
C     
      REAL FUNCTION DIFFSECS (FIRST,LAST)
      REAL     FIRST
      REAL     LAST
      DIFFSECS=(LAST-FIRST)*3600.
      RETURN
      END

