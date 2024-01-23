#!/bin/bash
#Calculadora
#Autor:Ivan Santiago Algado
#Fecha: 23-01-2024

clear 

echo "Autor:Iván Santiago Algado"

if [ $# != 2 ]; then 
	exit 
else
	if [ -f $1 ];then 
			echo "Ya hay un archivo con ese nombre"
			exit
		else
		
		
i=1				
			while [ $i -le $2 ]; do
				
				read -p "Operacion Op1 Op2 " Op Op1 Op2 
				case $Op in
					S)
						suma=$(($Op1+$Op2))
						echo El resultado de la suma es $suma
						echo $Op $Op1 $Op2 >> $1
					;;
					R)
						resta=$(($Op1-$Op2))
                                        	echo El resultado de la resta es $resta
                                        	echo $Op $Op1 $Op2 >> $1
                                	;;
					D)
						division=$(($Op1/$Op2))
                                        	echo El resultado de la division es $division
                                       		 echo $Op $Op1 $Op2 >> $1
                                	;;
					M)
						multi=$(($Op1*$Op2))
                                        	echo El resultado de la multiplicacion es $multi
                                        	echo $Op $Op1 $Op2 >> $1
                                	;;
					X)
						echo "Has pulsado la opcion de salir"
						break
                                	;;
					*)
						echo "Has pulsado la opcion de salir"
                                       		break
                                	;;
			esac
		i=$(($i+1))
			done
	p=$(pwd)
	echo "La ruta del fichero creado anteriormente es $p/$1"
	echo "Ahora va aparecer en pantalla el contenido del fichero en cuestión"
	cat $1
	fi
fi









































