@echo off
REM Crear menú con dos opciones 
REM autor:Ivan Santiago algado 
REM
REM Fecha:15-11-2023

title User Input
echo Pulsa 1 para crear un archivo .txt
echo Pulsa 2 para crear un archivo .bat
set /p opcion1=Introduzca el numero
if %opcion% == 1 goto txt 
if %option% == 2 goto bat
set /p nombreArchivo="Introduzca el nombre del Archivo"
set /p nombreRuta="Introduzca el nombre de la ruta donde quiere guardar el archivo"

:txt 
echo > C:\%nombreRuta%\%nombreArchivo%.bat
exit

:bat
echo > C:\%nombreRuta%\%nombreArchivo%.bat
exit
