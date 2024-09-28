      ******************************************************************
      * Author:Lawrence Wilson
      * Date: 9/28/24
      * Purpose: ACCEPT Verb learning
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 DayofYear.
           02 FILLER  PIC 99.
           02 YearDay  PIC 9(3).

       01 CurrentTime.
           02 CurrentHour  PIC 99.
           02 CurrentMinute PIC 99.
           02 FILLER        PIC 9(4).

       01  Username PIC X(20).
       01  CurrentDate.
           02 CurrentY  PIC 99.
           02 CurrentMonth PIC 99.
           02 CurrentDay   PIC 99.
       01  Y2KDate.
           02 Y2KYear   PIC 9(4).
           02 Y2KMonth  PIC 99.
           02 Y2KDay    PIC 99.
       01  Y2KDayofYear.
           02 Y2KDOY-Year PIC 9(4).
           02 Y2KDOY-Day  PIC 999.
       *> Receiving data for UserName

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Please enter your name - " WITH NO ADVANCING
            ACCEPT Username
            DISPLAY "*************"
            ACCEPT CurrentDate FROM DATE
            ACCEPT DayofYear FROM DAY
            ACCEPT CurrentTime from TIME
            ACCEPT Y2KDate FROM DATE YYYYMMDD
            ACCEPT Y2KDayofYear FROM DAY YYYYDDD
            DISPLAY "Name is " Username
            DISPLAY "DATE IS " CurrentDay "-" CurrentMonth "-" CurrentY
            DISPLAY "Today is day " YearDay " of the year"
            DISPLAY "The time is " CurrentHour ":" CurrentMinute
            DISPLAY "Y2KDate is " Y2KDate SPACE Y2KMonth SPACe Y2KYear

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
