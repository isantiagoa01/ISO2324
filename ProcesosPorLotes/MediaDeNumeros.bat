@echo off
REM Realizar la media de tres numeros pasados por parametros
REM autor:Ivan Santiago algado 
REM
REM Fecha:14-11-2023


set /a suma=%1 + %2 +%3

set /a division=(%1 + %2 + %3)/3
echo La media de los numeros es %division%