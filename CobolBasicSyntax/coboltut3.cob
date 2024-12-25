>>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut3.
AUTHOR. Lawrence.

ENVIRONMENT DIVISION.
CONFIGURATION SECTION.
SPECIAL-NAMES.
    CLASS PassingScore IS "A" THRU "C", "D".

DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.

01 Age PIC 99 VALUE 0.
01 Grade PIC 99 VALUE 0.
01 Score PIC X(1) VALUE "B".
01 Voting PIC 9 VALUE 0.
           88 CanVote VALUE 1.
           88 CantVote VALUE 0.
01 TestNumber PIC X.
           88 IsPrime VALUE "1","3","5","7".
           88 IsOdd VALUE "1","3","5","7","9".
           88 IsEven VALUE "2","4","6","8".
           88 LessThan5 VALUE "1" THRU "4".
           88 NumberSingle VALUE "0" THRU "9".

    
PROCEDURE DIVISION.
DISPLAY "Enter Age : " WITH NO ADVANCING
ACCEPT Age
IF Age > 18 THEN 
    DISPLAY "CAN VOTE"
ELSE
    DISPLAY "CAN'T VOTE"
END-IF 


IF Age LESS THAN 5 THEN
    DISPLAY "Go home"
END-IF
IF Age = 6 THEN
    DISPLAY "Go to grade 1"
END-IF 
IF Age >  5 AND Age < 18 THEN
    COMPUTE Grade = Age - 5
    DISPLAY "TO GRADE " Grade
END-IF
IF Age GREATER THAN OR EQUAL TO 18
    DISPLAY "Go to collge"
END-IF



IF Score IS PassingScore THEN
    DISPLAY " You Passed"
ELSE
    DISPLAY " ry Again"
END-IF

IF Score IS NOT NUMERIC THEN
    DISPLAY "Not a number"
END-IF

IF Age> 18 THEN
    SET CanVote TO TRUE
ELSE
    SET CantVote TO TRUE
END-IF
DISPLAY "Vote " Voting

DISPLAY "Enter single num or x to quit : " 
ACCEPT TestNumber
PERFORM UNTIL NOT NumberSingle
    EVALUATE TRUE
        WHEN IsPrime DISPLAY "Prime"
        WHEN IsOdd DISPLAY "Odd"
        WHEN IsEven DISPLAY "EVEN"
        WHEN LessThan5 DISPLAY "< 5"
        WHEN OTHER DISPLAY "Deafult Action"
    END-EVALUATE
    ACCEPT TestNumber
END-PERFORM


STOP RUN.
