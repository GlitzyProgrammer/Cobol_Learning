>>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut4.
AUTHOR. Lawrence.

ENVIRONMENT DIVISION.

DATA DIVISION.
WORKING-STORAGE SECTION.

PROCEDURE DIVISION.
SubOne.
    DISPLAY "In paragraph 1".
    PERFORM SubTwo.
    DISPLAY "Return to Paragraph 1".
    PERFORM SubFour 2 TIMES.
    STOP RUN.
*>
SubThree. 
    DISPLAY "In Paragraph 3".

SubTwo.
    DISPLAY "In Paragraph 2".
    PERFORM SubThree.
    DISPLAY "Returned to Paragraph 2".

SubFour.
    DISPLAY "Repeat".

STOP RUN.
