       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      ***************************************
      * AUTHOR: JEFF LUCAS
      * DATE: JUN 2021
      * OBJETIVO: OPERADORES ARITIMETICOS
      ***************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1    PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2    PIC 9(02) VALUE ZEROS.
       77 WRK-RESULT  PIC 9(03) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY 'N1 = ' WRK-NUM1.
           DISPLAY 'N2 = ' WRK-NUM2.
           DISPLAY '-=-=-=-=-=-=-=-=-=-=-=-=-=-'.
      ****************SOMA
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESULT.
            DISPLAY 'SOMA = ' WRK-RESULT.
      ****************SUBTRACAO
           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESULT.
            DISPLAY 'SUBTRACAO = ' WRK-RESULT.
      ****************DIVISAO
           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT.
            DISPLAY 'DIVISAO = ' WRK-RESULT.
      ****************MULTIPLICACAO
           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT.
            DISPLAY 'MULTIPLICACAO = ' WRK-RESULT.
           STOP RUN.
