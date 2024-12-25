>>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltut9.
AUTHOR. Lawrence.

ENVIRONMENT DIVISION.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 SampStr     PIC X(18) VALUE 'eerie beef sneezed'.
01 NumChars    PIC 99 VALUE 0.
01 NumEs       PIC 99 VALUE 0.
01 FName       PIC X(6) VALUE 'Martin'.
01 MName       PIC X(11) VALUE 'Luther King'.
01 LName       PIC X(4) VALUE 'King'.
01 FLName      PIC X(11).
01 FMLName     PIC X(18).
01 SStr1       PIC X(7) VALUE "The egg".
01 SStr2       PIC X(9) VALUE "is #1 and".
01 Dest        PIC X(33) VALUE "is the big chicken". 
01 Ptr         PIC 9 VALUE 1.
01 SStr3       PIC X(3).
01 SStr4       PIC X(3).
PROCEDURE DIVISION.

*> string operations 
INSPECT SampStr TALLYING NumChars FOR CHARACTERS. 
DISPLAY "Number of Characters :  " NumChars. 

INSPECT SampStr TALLYING NumES FOR ALL 'e'.
DISPLAY "Number of E's: " NumEs.
DISPLAY FUNCTION UPPER-CASE(SampStr)
DISPLAY FUNCTION LOWER-CASE(SampStr)


STRING FName DELIMITED BY SIZE 
*> delimied by size means wants the whole string 
SPACE 
LName DELIMITED BY SIZE
INTO FLName.
*> into sticks a string and joins them together 
DISPLAY FLName.

*> string it self puts stings together 
STRING FLName DELIMITED BY SPACES 
SPACE *> by spaces gets the string uptil a space is detected
MName DELIMITED BY SIZE
SPACE 
LName DELIMITED BY SIZE
INTO FMLName

ON OVERFLOW DISPLAY 'OVERFLOWED'.
DISPLAY FMLName.


STRING SStr1 DELIMITED BY SIZE
SPACE 
SStr2 DELIMITED BY "#"
*> grabs everything uptil the #

INTO Dest
WITH POINTER  Ptr
ON OVERFLOW DISPLAY 'OVERFLOWED'.
DISPLAY Dest. 

*> splits the string in half using space as delimiter 
*> stores them in two variables
UNSTRING SStr1 DELIMITED BY SPACE
INTO SStr3, SStr4
END-UNSTRING.
DISPLAY SStr4.
DISPLAY SStr3.

STOP RUN.
