      PROGRAM BUBBLESORT
      INTEGER ARR(5),N
      N = 5
      CALL INPUT(ARR,N)
      CALL SORT(ARR,N)
      PRINT *,'THE SORTED LIST IS: '
      CALL OUTPUT(ARR,N)
      END  
      
      SUBROUTINE INPUT(ARR,N)
      	   INTEGER ARR(N),I,N
	   DO 1 I=1,N
                PRINT *,'ENTER AN INTEGER VALUE: '
                READ *,ARR(I)
1          CONTINUE
      END

      SUBROUTINE OUTPUT(ARR,N)
	   INTEGER ARR(N),I,N
           DO 4 I=1,N
                PRINT *,ARR(I)
4	   CONTINUE
           RETURN
      END
      
      SUBROUTINE SORT(ARR,N)
	   INTEGER ARR(N),I,J,K,L,N
           L = 0      
	   DO 2 K=1,N
                J = 0
                DO 3 I=1,N-1
                     IF(ARR(I+1).LT.ARR(I)) THEN
                          CALL SWAP(ARR,N,I)
                          L = L + 1
                     ELSE
                          J = J + 1
                     END IF
3               CONTINUE
                IF(J.EQ.N-1)EXIT
2          CONTINUE
           PRINT *, 'TOTAL NUMBER OF SWAPS: ',L
           RETURN
      END

      SUBROUTINE SWAP(ARR,N,I)
           INTEGER ARR(N),N,I,J,TMP
	   J = I+1
           TMP = ARR(I)
	   ARR(I) = ARR(J)
	   ARR(J) = TMP
           PRINT *,'SWAPPING ',I,' BY ',J,' ',ARR(J),'<->',ARR(I)
           RETURN
       END
