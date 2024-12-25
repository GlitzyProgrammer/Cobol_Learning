>>SOURCE FORMAT FREE
IDENTIFICATION DIVISION.
PROGRAM-ID. coboltuttable.
AUTHOR. Lawrence.

ENVIRONMENT DIVISION.

DATA DIVISION.
WORKING-STORAGE SECTION.
*> Indexes are called subscripts 
*> Tables can contain multiple data items
01 Table1. 
    02 Friend PIC X(15) OCCURS 4 TIMES.
    *> This table is 1D
01 CustomerTable. 
    02 CustomerName OCCURS 5 TIMES.
        03 FName PIC X(15).
        03 LName PIC X(15).

01 OrderTable. 
    02 Product OCCURS 2 TIMES INDEXED BY I.
        03 ProdName PIC X(10).
        03 ProdSize OCCURS 3 TIMES INDEXED BY J.
            04 SizeType PIC A. 

PROCEDURE DIVISION.
MOVE 'Joy' TO Friend(1)
MOVE 'Willow' TO Friend(2)
MOVE 'Ivy' TO Friend(3)
DISPLAY Table1. 
DISPLAY Friend(1).

Move 'Paul' TO FName(1)
MOVE 'Willow' TO LName(1).

Move 'Jenny' TO FName(1)
MOVE 'Petras' TO LName(1).

DISPLAY CustomerTable.
DISPLAY CustomerName(1).
*> Order table
SET I J TO 1. 
MOVE 'Blue Shirt' TO Product(I).
MOVE 'S' TO ProdSize(I,J).
SET J UP BY 1.  *> increments
MOVE 'M' TO ProdSize(I,J).
SET J DOWN BY 1. 

*> filling all informatino in one shot
MOVE 'BLUE ShirtSMLRed Shirt SML' TO OrderTable.
PERFORM GetProduct VARYING I FROM 1 BY 1 UNTIL I>2. 
GO TO Lookup.

GetProduct.
    DISPLAY PRODUCT(I).
    PERFORM GetSizes VARYING J FROM 1 BY 1 UNTIL J>3.

GetSizes. 
    DISPLAY ProdSize(I,J).

Lookup.
    SET I TO 1. 
    SEARCH Product
        AT END DISPLAY 'Product Not Found'
        WHEN ProdName(I) =  'Red Shirt'
            DISPLAY 'Red Shirt Found'
        END-SEARCH.



STOP RUN.
