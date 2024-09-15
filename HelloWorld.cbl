      ******************************************************************
      * Author: Lawrence Wilson II
      * Date: 9/15/24
      * Purpose: Stepping into Cobol!
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 FirstNum PIC 9 VALUE ZEROS.
       01 SecondNum PIC 9 VALUE ZEROS.
       01 CalcResult PIC 99 VALUE 0.
       01 UserPrompt PIC X(38) VALUE
                     "Please enter two single digit numbers".
       *> The 01 are levels in the hiearchy so 01s are for independent varibles
       *> PIC X is the max number it can handle
       *> PIC X(38) 38 characters can be held

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello Zack"
            ACCEPT FirstNum
            ACCEPT SecondNum
            COMPUTE CalcResult= FirstNum +SecondNum.
            DISPLAY "Result is = ", CalcResult
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
