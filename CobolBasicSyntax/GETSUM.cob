>>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. GETSUM.
AUTHOR. Lawrence.

ENVIRONMENT DIVISION.

DATA DIVISION.
    LINKAGE SECTION.
     01 LNum1 PIC 9 VALUE 5.
     01 LNum2 PIC 9 VALUE 4.
     01 LSum1 PIC 99. 
*> Copy the values you want to call from your source 
*> with the alternative procedure 
*> write exit program instead of Stop run
*> this is how you complie your  code to call
*> cobc -m --free GETSUM.cob

PROCEDURE DIVISION USING LNum1, LNum2, LSum1.
       COMPUTE LSum1= LNum1 + LNum2.

EXIT PROGRAM.
