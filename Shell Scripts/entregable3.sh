#!/bin/bash

clear 

if [ $# != 2 ];then 
	echo "numero de parametros incorrecto"
	exit
fi

if [ -f $1 ];then 
	echo"Ese fichero ya existe"
	exit
fi

if [ ! -d $2 ];then 
	echo "Eese directorio ya existe"
	exit
fi

fichero=$(ls $2)
if [ -z $fichero ];then 
	echo"Ese directorio está vacío"
	exit
fi

vacio=$(ls  $2/*.txt)

touch $1.txt

for i in $vacio ;do 
	lineas=$(cat $i | wc -l)

	if [ $lineas -ge 5 ] && [ -f $1.txt ]  ;then
		echo $i
		echo "$i" >> $1
	fi
done
