>>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut5.
AUTHOR. Lawrence.

ENVIRONMENT DIVISION.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 Num1 PIC 9 VALUE 5. 
    01 Num2 PIC 9 VALUE 4. 
    01 Sum1 PIC 99.

PROCEDURE DIVISION.
*> This is a subroutine being called like a"function"
*> to make it work you have to call the same values in order
CALL 'GETSUM' USING Num1, Num2, Sum1.
DISPLAY Num1 " + " Num2 " = " Sum1.

STOP RUN.
