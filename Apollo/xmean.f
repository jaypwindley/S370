C************************************************************************
C$$$  Routine:      XMEAN
C$$$  Purpose:      Compute the arithmetic mean of VALS
C$$$  Input Parms:  VALS array of REAL(4)
C$$$                N number of elements
C$$$  Output Parms: mean of VALS
C$$$
C$$$  Author:       Jay Windley
C$$$  Created:      2016-10-13
C$$$  Revision:     A
C***********************************************************************
      
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
