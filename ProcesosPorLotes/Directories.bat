@echo off
REM Crear menú con dos opciones 
REM autor:Ivan Santiago algado 
REM
REM Fecha:15-11-2023

title Directories
echo Pulsa 1 para crear un fichero con nombre 
echo Pulsa 2 para mostrar el arbol de directorios de la carpeta usuario
echo Pulsa 3 para mostrar archivos con extension txt
echo Pulsa 4 para crear los directorios alfredoff, marinapg, y ramonam en tu directorio actual
echo Pulsa 5 para copiar el contenido de tu carpeta de usuario al Escritorio

set /p opcion= "Introduzca el numero "
if %opcion% == 1 goto fichero 
if %opcion% == 2 goto arbol
if %opcion% == 3 goto mostrar
if %opcion% == 4 goto directorios
if %opcion% == 5 goto contenido


:fichero 
set /p nombreArchivo="Introduzca el nombre del Archivo "
echo > %nombreArchivo%
exit

:arbol 
@echo on
tree %Userprofile%
pause
exit

:mostrar 
@echo on
dir *.txt
pause
exit

:direcotrios
@echo off 
mkdir alfredoff marinapg ramonam
pause 
exit 

:contenido
@echo on
xcopy %userprofile% C:\Copia /E 
pause
exit 