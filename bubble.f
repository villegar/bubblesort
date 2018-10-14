      PROGRAM BUBBLESORT
      INTEGER ARR(10),I,J,K,SWAPP
      CALL INPUT(ARR,10)
      DO 2 K=1,10,1
           J = 0
           DO 3 I=1,9,1
                IF(ARR(I+1).LT.ARR(I)) THEN
		      CALL SWAP(ARR,10,I)
                ELSE
                     J = J + 1
                END IF
3          CONTINUE
           IF(J.EQ.9)EXIT
2     CONTINUE
      PRINT *,'THE SORTED LIST IS: '
      CALL OUTPUT(ARR,10)
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

      SUBROUTINE SWAP(ARR,N,I)
           INTEGER ARR(N),N,I,J,TMP
	   J = I+1
           TMP = ARR(I)
	   ARR(I) = ARR(J)
	   ARR(J) = TMP
           PRINT *,'SWAPPING ',I,' BY ',J,' ',ARR(J),'<->',ARR(I)
           RETURN
       END
