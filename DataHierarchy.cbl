      ******************************************************************
      * Author: Lawrence
      * Date: 9/28/24
      * Purpose: Data Hieracy
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 STREC PIC X(44).

       01 STREB.
           02 StudentId  PIC 9(7).
           02 StudentName.
               03 Forname  PIC X(9).
               03 Surname  PIC X(12).
           02 DatOfBirth.
               03 YOB      PIC 9(4).
               03 MOB      PIC 99.
               03 DOB      PIC X(5).
           02 CourseId     PIC X(5).
           02 GPA          PIC 9V99.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Hello world"
           MOVE "1205621William  Fitzpatrick  19751021LMO51385" TO STREC.
           DISPLAY STREC
            *> you can do this but it's rather ineffictive to manage
           MOVE STREC TO STREB
           DISPLAY "Student date of brith is " DOB "/" MOB "/" YOB
           DISPLAY "Student Name= " Surname"," SPACE Forname
           MOVE "Billy" to Forname
           MOVE 22 to DOB.
           *> splitting it up  makes it more orginized and easy to read

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
