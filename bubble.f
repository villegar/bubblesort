      PROGRAM BUBBLESORT
      INTEGER ARR(10),I,J,K,SWAP
      DO 1 I=1,10,1
           PRINT *,'ENTER AN INTEGER VALUE: '
           READ *,ARR(I)
1     CONTINUE
      DO 2 K=1,10,1
           J = 0
           DO 3 I=1,9,1
                IF(ARR(I+1).LT.ARR(I)) THEN
                     SWAP = ARR(I)
                     ARR(I) = ARR(I+1)
                     ARR(I+1) = SWAP
                ELSE
                     J = J + 1
                END IF
3          CONTINUE
           IF(J.EQ.9)EXIT
2     CONTINUE
      PRINT *,'THE SORTED LIST IS: '
      DO 4 I=1,10,1
           PRINT *,ARR(I)
4     CONTINUE
      END   
