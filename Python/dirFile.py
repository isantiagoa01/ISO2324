# Iván Santiago Algado
# Fecha:1-03-2024
import os
import shutil as s

listaFicheros = []
listaDirectorios = []

lista = open("rutas.txt", mode="r")
li=lista.readlines()
print(li)
for i in li:
    r=i.strip()
    dire = os.path.isdir(r)
    ficher = os.path.isfile(r)
    if dire == True:
        listaDirectorios.append(r)
        print("Es un directorio")

    if ficher == True:
        listaFicheros.append(r)
        print("Es un fichero")
print(listaFicheros)
print(listaDirectorios)

opciones = "K"

while opciones != "E":
    print("Opción A:Pedir nombre de fichero y eliminarlo")
    print("Opción B:Pedir nombre de directorio y mostrar su información")
    print("Opción C:Pedir nombre de fichero, nombre de destino y copiarlo en dicho destino")
    print("Opción D:Mostrar lista elegida por el usuario")
    print("Opción E:Salir")
    opciones = input("Introduce una de las opciones anteriores")
    if opciones == "A":
        fich = input("Introduce el nombre de un fichero")
        os.system("rm " + fich)
        print("El fichero ha sido eliminado")
    if opciones == "B":
        dir = input("Introduce el nombre de un directorio")
        directorio=os.system("ls " +dir )
        print(directorio)
    if opciones == "C":
        fich = input("Introduce el nombre de un fichero")
        dest = input("Introduce el nombre de un destino para el archivo anterior")
        s.copy(fich,dest)
    if opciones == "D":
        lista = input("Que lista quieres mostrar")
        if lista == "listaFicheros":
            print(listaFicheros)
        if lista == "listaDirectorios":
            print(listaDirectorios)

