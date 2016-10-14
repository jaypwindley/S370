      SUBROUTINE RDAOSLOS (LOS, AOS, N)      
      REAL      AOS(10), LOS(10)
      INTEGER   LHR, LMIN, AHR, AMIN
      REAL      LSEC, ASEC
      INTEGER   N
      DO 100 I=1,10
         READ(5,901,ERR=800,END=110)
     *        LHR, LMIN, LSEC,
     *        AHR, AMIN, ASEC
         LOS(I)=DECHRS(LHR,LMIN,LSEC)
         AOS(I)=DECHRS(AHR,AMIN,ASEC)
 901     FORMAT(I3,I2,F4.1,1X,I3,I2,F4.1)
 100  CONTINUE
C     end-of-file
 110  N=I-1
      RETURN
C     I/O error
 800  WRITE(6,902)
 902  FORMAT(' I/O ERROR ON AOS/LOS INPUT')
      N=0
      RETURN
      END
