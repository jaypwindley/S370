C************************************************************************
C$$$      Library:  STATLIB
C$$$      Purpose:  Statistics functions
C$$$      Date:     2016OCT13
C$$$      Revision: A
C************************************************************************      

C------------------------------------------------------------------------
C     Routine:      XMEAN
C     Purpose:      Compute the arithmetic mean of VALS
C     Input Parms:  VALS array of REAL(4)
C                   N number of elements
C     Output Parms: mean of VALS
C     
      REAL FUNCTION XMEAN (VALS, N)
      REAL      VALS(10)
      INTEGER   N
      REAL      SUM
      SUM=0.
      DO 100 I=1,N
         SUM=SUM+VALS(I)         
 100  CONTINUE
      XMEAN=SUM/N
      RETURN
      END

C------------------------------------------------------------------------
C     Routine:      XSTDDEV
C     Purpose:      Compute the standard deviation of VALS
C     Input Parms:  VALS array of REAL(4)
C                   N number of elements
C                   MEAN arithmetic mean of VALS such as computed by
C                        XMEAN(VALS,N)
C     Output Parms: standard deviation of VALS
C     
      REAL FUNCTION XSTDDEV (VALS, N, MEAN)
      REAL      VALS(10)
      INTEGER   N
      REAL      MEAN
      REAL      SUM
      SUM=0.
      DO 200 I=1,N
         SUM=SUM+(VALS(I)-MEAN)**2
 200  CONTINUE
      XSTDDEV=SQRT(SUM/N)
      RETURN
      END
