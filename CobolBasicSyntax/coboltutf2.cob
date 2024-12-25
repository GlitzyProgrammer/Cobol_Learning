>>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltutf2.
AUTHOR. Lawrence.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION. 
FILE-CONTROL.
       SELECT CustomerFile ASSIGN TO "Customer.dat"
           ORGANIZATION IS LINE SEQUENTIAL
           *> Each pieace of data is going to take a lineof the file
           *> when new lines are added it ads a newline
           ACCESS IS SEQUENTIAL.

DATA DIVISION.
FILE SECTION. 
*> need to have the file sections and working storage 
*> mirror each other like below for customerfile/data
FD CustomerFile.
01 CustomerData.
       02 IDNum  PIC 9(5).
       02 CustName.
           03 FirstName PIC X(15).
           03 LastName PIC X(15). 
WORKING-STORAGE SECTION.
*> file is a collection of records
01 WSCustomerData.
       02 WSIDNum  PIC 9(5).
       02 WSCustName.  *> collection of fields = Record
           03 WSFirstName PIC X(15).  *> field
           03 WSLastName PIC X(15).   *> piece of informatipon


01 WSEOF PIC A(1). *> lets us react to EOF
PROCEDURE DIVISION.
OPEN EXTEND CustomerFile.   *> opens file 
       DISPLAY "Customer ID " WITH NO ADVANCING
       ACCEPT IDNum
       DISPLAY "Customer f-Name: " WITH NO ADVANCING
       ACCEPT FirstName
       DISPLAY "Customer l-Name: " WITH NO ADVANCING
       ACCEPT LastName.
       WRITE CustomerData   *> writes to Customer data buffer
       END-WRITE.
CLOSE CustomerFile.

OPEN INPUT CustomerFile.
       PERFORM UNTIL WSEOF='Y'  *> goes to 'Y'
           READ CustomerFile INTO WSCustomerData  *> loads info to buffer
               AT END MOVE 'Y' TO WSEOF
               *> reached eof
               NOT AT END DISPLAY WSCustomerData
               *> when we are not at the eof 
         END-READ
       END-PERFORM

CLOSE CustomerFile.

STOP RUN.
