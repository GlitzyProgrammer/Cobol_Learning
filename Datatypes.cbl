      ******************************************************************
      * Author:Lawrence Wilson
      * Date: 9/18/24
      * Purpose: Learning data types and MOVE verb
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 Num1 PIC 999 VALUE ZEROS.
       01 Num2 PIC 999 VALUE 15.
       01 TaxRate PIC V99 VALUE .35.
       01 CustomerName PIC X(15) VALUE "Mike".
       01 Surname PIC x(8) VALUE "COUGHLAN".
       01 SalePrice PIC 9(4)V99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "SMITH" TO Surname.
            DISPLAY "Surname = ",Surname.
            MOVE "FITZWILLIAM" TO Surname.
            DISPLAY "Surname = ",Surname.
            *> This is a perfect example of truncation taking place for alphanumeric values
            MOVE ZEROS TO SalePrice.
            DISPLAY SalePrice.
            MOVE 25.5 TO SalePrice.
            DISPLAY SalePrice.
            MOVE 7.553 TO SalePrice.
            DISPLAY SalePrice.
            MOVE 93425.157 TO SalePrice.
            DISPLAY SalePrice.
            MOVE 128 TO SalePrice.
            DISPLAY SalePrice.
            *> When moving numeric value be wary of the decimal place

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
