>>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltutf3.
AUTHOR. Lawrence.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION. 
FILE-CONTROL.
       SELECT CustomerFile ASSIGN TO "customer.txt"
       ORGANIZATION IS INDEXED 
       ACCESS MODE IS RANDOM
       RECORD KEY IS IDNum. 
DATA DIVISION.
FILE SECTION. 
FD CustomerFile.
01 CustomerData.
       02 IDNum PIC 9(2).
       
       02 FirstName PIC X(15).
       02 LastName PIC X(15).

WORKING-STORAGE SECTION.
01 Choice PIC 9. 
01 StayOpen PIC X VALUE 'Y'.
01 CustExits PIC X.

PROCEDURE DIVISION.
StartPara. 
       OPEN I-O CustomerFile. *> I/0 MODE ACCESS DATA RANDOMLY
       PERFORM UNTIL StayOpen='N'
           DISPLAY " "
           DISPLAY "CUSTOMER RECORDS"
           DISPLAY "1: Add Customer"
           DISPLAY "2: Delete Customer"
           DISPLAY "3: Update Customer"
           DISPLAY "4: Get Customer"
           DISPLAY "0: Quit"
           DISPLAY ": " WITH NO ADVANCING 
           ACCEPT Choice
           EVALUATE Choice
               WHEN 1 PERFORM AddCust
               WHEN 2 PERFORM DeleteCust
               WHEN 3 PERFORM UpdateCust
               WHEN 4 PERFORM GetCust
               WHEN OTHER move 'N' TO StayOpen
            END-EVALUATE 
       END-PERFORM.
       CLOSE CustomerFile
       STOP RUN.
AddCust. 
       DISPLAY " "
       DISPLAY "Enter ID: " WITH NO ADVANCING.
       ACCEPT IDNum.
       DISPLAY "Enter First Name: " WITH NO ADVANCING.
       ACCEPT FirstName.
       DISPLAY "Enter Last Name: " WITH NO ADVANCING.
       ACCEPT LastName.
       DISPLAY " "
       WRITE CustomerData
           INVALID KEY DISPLAY "ID Taken"
       END-WRITE. 
DeleteCust. 
       DISPLAY " "
       DISPLAY "Enter Customer ID to delete : " WITH NO ADVANCING.
       ACCEPT IDNum.
       DELETE CustomerFile
           INVALID KEY DISPLAY "Key DNE"
       END-DELETE.
UpdateCust. 
       MOVE 'Y' TO CustExits.
       DISPLAY " "
       DISPLAY "Enter ID to Update: " WITH NO ADVANCING
       ACCEPT IDNum.
       READ CustomerFile
           INVALID KEY MOVE 'N' TO CustExits
       END-READ 

       IF CustExits='N'
           DISPLAY "Customer DNE"
       ELSE 
           DISPLAY "Enter the New First Name : " WITH NO ADVANCING 
           ACCEPT FirstName
           DISPLAY "Enter the New Last Name : " WITH NO ADVANCING 
           ACCEPT LastName
       END-IF.
       REWRITE CustomerData
           INVALID KEY DISPLAY "Customer Not updated"
       END-REWRITE.
GetCust. 
       MOVE 'Y' TO CustExits.
       DISPLAY " "
       DISPLAY "Enter ID to Update: " WITH NO ADVANCING.
       ACCEPT IDNum.
       READ CustomerFile
           INVALID KEY MOVE 'N' TO CustExits
       END-READ 
       IF CustExits='N'
           DISPLAY "Customer Doesn't Exisit"
       ELSE 
           DISPLAY "ID: " IDNum
           DISPLAY "First Name : " FirstName
           DISPLAY "Last Name : " LastName
        END-IF.

           

