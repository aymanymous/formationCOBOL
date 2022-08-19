       IDENTIFICATION DIVISION.
       PROGRAM-ID.  CONDITIONS.
       AUTHOR.  AMN.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  CHAR               PIC X.
           88 VOYELLE           VALUE "A", "E", "I", "O", "U".
           88 CONSONNE       VALUE "B", "C", "D", "F", "G", "H"
                              "J" THRU "N", "P" THRU "T", "V" THRU "Z".
           88 CHIFFRE           VALUE "0" THRU "9".
           88 VALIDCHARACTER  VALUE "A" THRU "Z", "0" THRU "9".

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "ENTRER UN MAJISCULE OU BIEN CHIFFRE :".
           ACCEPT CHAR.

             EVALUATE TRUE
                WHEN VOYELLE DISPLAY "-->:" CHAR " C EST UN VOYELLE."
                WHEN CONSONNE DISPLAY "-->:" CHAR " C EST CONSONNE."
                WHEN CHIFFRE DISPLAY "-->:" CHAR " C EST CHIFFRE."
                WHEN OTHER DISPLAY "AUCUN CAS"
             END-EVALUATE.
             STOP RUN.
