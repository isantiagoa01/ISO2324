#!/bin/bash
#FiveOrMore
#Autor:Iván Santiago
#Fecha 29-01-2024

clear 


if [ $# != 2 ]; then 
	echo"Numero de parametros incorrecto"
	exit
fi

if [ -f $1 ];then 
	echo "El fichero ya existe"
	exit
fi
if [ ! -d $2 ];then 
	echo "Ese directorio no existe"
	exit
fi

vacio=$(ls $2)

if [ -z $vacio ];then
	echo"El directorio está vacio"
	exit
fi
 
echo "Autor:Iván Santiago Algado"

txt=$(ls $2/*.txt )

for i in $txt; do
	if [ -f $i ];then
lineas=$(cat $i | wc -l | cut -d " " -f 1) 
	if [ $lineas -ge 5 ];then
	echo $i
	echo $i >> $1.txt
	cat $i > $i.q
	#parte4
	palabras=$(cat $i | wc -w)
	echo "El fichero tiene $palabras palabras" > $i.q
	cat $i >> $i.q 
	fi
	fi

done 




