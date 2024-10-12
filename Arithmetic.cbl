      ******************************************************************
      * Author:Lawrence Wilson
      * Date: 10/12/24
      * Purpose: Learning Arithmetic operations
      * Program also accepts two numbers from user and adds and
      * multipies them together then displays reults
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Result PIC 9(4) VALUE 3333.
       01 Euro  PIC 9(5)V99 VALUE 3425.15.
       01 Dollar PIC 9(5)V99 VALUE 1234.75.
       01 ExchangeRate PIC 9V9(4) VALUE 1.3017.
       01 Cash PIC 9(3) VALUE 364.
       01 Total PIC 9(4) VALUE 1000.
       01 Num1  PIC 9 VALUE 5.
       01 Num2  PIC 9 VALUE 4.
       01 Result1 PIC 99 VALUE 00.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY Result
            COMPUTE Result = 90 - 7 * 3 + 50 / 2
            DISPLAY Result
            DISPLAY Euro
            DISPLAY Dollar
            DISPLAY ExchangeRate
            COMPUTE Euro ROUNDED = Dollar / ExchangeRate
            DISPLAY Euro
            ADD Cash TO Total
            DISPLAY Total
            DISPLAY "Enter a single digit number - "
            ACCEPT Num1
            DISPLAY "Enter single digit number - "
            ACCEPT Num2
            COMPUTE Result1 = Num1 + Num2
            DISPLAY "Result is = ", Result1
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
