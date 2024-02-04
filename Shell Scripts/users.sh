#!/bin/bash
#Entregable4
#Autor:Iván Santiago Algado
#Fecha:2-2-2024

clear

if [ $# -gt 1 ];then 
	echo"Numero de paramteros incorrecto"
	exit
fi

echo "==========================================================================="
	echo
	fecha=$(date +"%d-%m-%y")
	hora=$(date +"%H:%M:%S" )
	echo "Informe de usuarios el día $fecha a las $hora"
	echo
if [ $# == 0 ];then
	u=1000
fi


if [ $# == 1 ];then
	u=$1

fi
numbers=$( cat /etc/passwd | cut -d ":" -f 3 )
Contar=0
	for i in $numbers ; do 	
		if [ $i -ge $u ];then 
			uid=$( cat /etc/passwd | cut -d ":" -f 3 | grep -w "$i" )
			user=$( cat /etc/passwd | cut -d ":" -f 1,3  | grep -w "$i" | cut -f 1 -d ":")
			echo $user - $uid
			echo
			Contar=$(($Contar+1))
		fi

	done
echo "El numero total de usuarios es $Contar"
echo
echo "==========================================================================="

echo "$fecha - $hora- El usuario $USER ha solicitado un informe de usuarios" >> /tmp/logeventos

