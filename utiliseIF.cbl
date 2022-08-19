       IDENTIFICATION DIVISION.
       PROGRAM-ID.  ITERATION-IF.
       AUTHOR.  AMN.	   
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NUM1           PIC 9 .
       01  NUM2           PIC 9 .
       01  RESULT         PIC 99.
       01  OPERATEUR      PIC X.

       PROCEDURE DIVISION.
       CALCULATOR.
           PERFORM 1 TIMES
              DISPLAY "ENTER PREMIER NUMBER      : "
              ACCEPT NUM1
              DISPLAY "ENTER DEUXIME NUMBER     : "
              ACCEPT NUM2
              DISPLAY "ENTER OPERATEUR (+ OR *) : "
              ACCEPT OPERATEUR
              IF OPERATEUR = "+" THEN
                 ADD NUM1, NUM2 GIVING RESULT
              END-IF
              IF OPERATEUR = "*" THEN
                 MULTIPLY NUM1 BY NUM2 GIVING RESULT
              END-IF
              DISPLAY "RESULT IS = ", RESULT
           END-PERFORM.
           STOP RUN.
