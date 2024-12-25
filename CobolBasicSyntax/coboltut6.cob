>>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut6.
AUTHOR. Lawrence.

ENVIRONMENT DIVISION.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 Ind PIC 9(1) VALUE 0. 
PROCEDURE DIVISION.
*>While loop like structure
PERFORM OutputData WITH TEST AFTER UNTIL Ind > 5
       GO TO ForLoop.

OutputData.
       DISPLAY Ind.
       ADD 1 TO Ind.
*> For loop structure
ForLoop.
       PERFORM OutputData2 VARYING Ind FROM 1 BY 1 UNTIL Ind=5
       STOP RUN.

OutputData2.
       DISPLAY Ind.
