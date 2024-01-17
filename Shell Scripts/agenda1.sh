#!/bin/bash
#Agenda Entregable
#Autor:ivan Santiago
#Fecha:17-01-2024

clear

i=1

while [ $i != E ] ;do

echo "Opcion A Añadir una entrada"
echo "Opcion B Buscar por Dni"
echo "opcion c Ver la agenda completa"
echo "Opcion D Eliminar todas las entradas de la agenda"
echo "Opcion E Finalizar"

	read -p "Introduce una de las opciones anteriores " i
case $i in 
	A)

	read -p "Introducir el dni de la persona a dar de alta" dni
	dni1=$(( cut -d ":" -f 1 | grep "^$dni" ))
	if [ $dni1 agenda.txt 2>/dev/null ]; then
		echo "Ese dni ya esta dado de alta"
	else 
		read -p "Introduce el nombre de la persona a dar de alta" nombre
		read -p "Introduce los apellidos de la persona a dar de alta" apellidos
		read -p "Introduce la localidad de la persona a dar de alta" localidad
		echo "$dni1:$nombre:$apellidos:$localidad" >> agenda.txt
	fi
	;;

	B)
	read -p "Introduce el dni de una persona" dni2
	if  grep "^$dni2" agenda.txt 2>/dev/null ;then
	nombre2=$((grep "^$dni2" | cut -d ":" -f 2))
	apellidos2=$((grep "^$dni2" | cut -d ":" -f 3))
	localidad2=$((grep "^$dni2" | cut -d ":" -f 4))
		echo $dni2
		echo La persona con el $dni2 se llama $nombre2 y sus apellidos son $apellidos2 y además vive en $localidad2
	else
		echo "Error , no hay una persona con ese dni en este fichero"
	fi	
	;;

	C)
		if [ -s agenda.txt ] ;then
			cat agenda.txt
		else
			echo "Agenda vacia"
		fi
	;;

	D)
		cat /dev/null > agenda.txt
		echo "El fichero se ha vaciado"
	;;
	
	E)
		echo "Has seleccionado la opcion de salir"
		echo
		exit
	;;
esac

done
