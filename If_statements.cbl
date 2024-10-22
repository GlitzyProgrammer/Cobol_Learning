      ******************************************************************
      * Author:Lawrence Wilson
      * Date: 10/21/24
      * Purpose: If statements
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       *> New stuff to get speical objects called classes
       *> need the env config then SPECIAL-NAMES
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           CLASS HexNumber IS "0" THRU "9", "A" THRU "F".
           CLASS RealName  IS "A" THRU "Z", "a" THRU "z", "'", SPACE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NumIn   PIC X(4).
       01 NameIn  PIC X(15).
       *> Condition Name
       01 CityCode PIC 9 VALUE ZERO.
           88 CityIsDublin  VALUE 1.
           88 CityIsParis  VALUE 2.
           88 CityIsBesac  VALUE 3.
           88 CityIsGeneve  VALUE 5.
           88 CityIsLausane VALUE 6.
           88 CityIsLyon  VALUE 4.
           88 NoTValid VALUE 0,7,8,9.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Enter a Hex number - "  WITH NO ADVANCING
           ACCEPT NumIn.
           IF NumIn IS HexNumber THEN
                   DISPLAY NumIn "Is a hex number"
           ELSE
                   DISPLAY NumIn  "is not a hex number"
           END-IF
            DISPLAY "___________________________"
           DISPLAY "Enter a name - " WITH NO ADVANCING.
           ACCEPT NameIn
           If NameIn Is ALPHABETIC
               DISPLAY NameIn "is alphabtic"
           ELSE
               DISPLAY NameIn "Is not alphabetic"
           END-IF
           *> END-IF is very important as the end-if acts as a full curicle
           DISPLAY "Enter a city code (1-6) - ".
           ACCEPT CityCode
           IF NoTValid
               DISPLAY "Invalid city code entered"
               ELSE
                    IF CityIsLyon *> you can do if = 4 but this is easy
                        DISPLAY "To love or not to"
                     ELSE
                        DISPLAY "You found love in a french place"
                     END-IF
                     *> each if to end-if acts like its own buble
           END-IF

            STOP RUN.

       END PROGRAM YOUR-PROGRAM-NAME.
