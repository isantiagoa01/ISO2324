@echo off
REM Pedir al usuario el nombre de un archivo y comprobar si existe.
REM autor:Ivan Santiago algado 
REM
REM Fecha:17-11-2023

title checkFiles
:pre
set /P nombreArchivo="Introduzca el nombre del archivo"

if exist %nombreArchivo% (echo "Existe el Archivo") else (goto existe)

:existe
echo Ya existe un archivo con ese nombre , escriba otro nombre
set /P nombreArchvo2="Introduzca otro nombre para el archivo"
echo > %nombreArchivo2%
exit
:fin
goto pre
