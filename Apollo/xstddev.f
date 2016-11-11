C************************************************************************
C$$$  Routine:      XSTDDEV
C$$$  Purpose:      Compute the standard deviation of VALS
C$$$  Input Parms:  VALS array of REAL(4)
C$$$                N number of elements
C$$$                MEAN arithmetic mean of VALS such as computed by
C$$$                     XMEAN(VALS,N)
C$$$  Output Parms: standard deviation of VALS
C$$$
C$$$  Author:       Jay Windley
C$$$  Created:      2016-10-13
C$$$  Revisiion:    A
C***********************************************************************
      
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
