       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB09.
      **************************************
      * AUTHOR:   JEFF LUCAS               *
      * DATE:     JUN 2021                 *
      * OBJETIVO: UTILIZAR O EVALUATE      *
      **************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-PRODUTO PIC X(20)    VALUE SPACES.
       77 WRK-VALOR   PIC 9(04)V99 VALUE ZEROS.
       77 WRK-FRETE   PIC 9(04)V99 VALUE ZEROS.
       77 WRK-UF      PIC X(02)    VALUE SPACES.
       PROCEDURE DIVISION.
           DISPLAY 'INFORME PRODUTO: '
           ACCEPT WRK-PRODUTO FROM CONSOLE.
           DISPLAY 'INFORME VALOR: '
           ACCEPT WRK-VALOR FROM CONSOLE.
           DISPLAY 'INFORME UF: '
           ACCEPT WRK-UF FROM CONSOLE.
           DISPLAY '=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-'
           EVALUATE WRK-UF
               WHEN 'GO'
                   COMPUTE WRK-FRETE = WRK-VALOR * 0,01
               WHEN 'PR'
                   COMPUTE WRK-FRETE = WRK-VALOR * 0,05
               WHEN 'SP'
                   COMPUTE WRK-FRETE = WRK-VALOR * 0,1
               WHEN OTHER
                   DISPLAY 'ESTADO NAO ATENDIDO'
           END-EVALUATE.

           IF WRK-FRETE IS NOT EQUAL ZERO
               DISPLAY 'VALOR DO PRODUTO: R$' WRK-VALOR
               DISPLAY 'VALOR DO FRETE: R$'    WRK-FRETE
               COMPUTE WRK-VALOR = WRK-VALOR + WRK-FRETE
               DISPLAY 'VALOR TOTAL: R$' WRK-VALOR
           END-IF.
           STOP RUN.
