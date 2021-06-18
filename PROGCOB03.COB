      *************************************
      * AUTHOR: JEFF LUCAS
      * DATE:   JUN 2021
      * OBJETIVO: VARIÁVEL DE NIVEL 01, 02, ESTRUTURADAS
      *           RECEBER E IMPRIMIR A DATA DO SISTEMA
      *************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB03.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-DATA.
          02 WRK-ANO PIC 9(04) VALUE ZEROS.
          02 WRK-MES PIC 9(02) VALUE ZEROS.
          02 WRK-DIA PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-DATA FROM DATE YYYYMMDD.
           DISPLAY 'DATA:' WRK-DIA ' DO ' WRK-MES ' DE ' WRK-ANO.
           STOP RUN.
