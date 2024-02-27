import os

import cpuinfo as c

uid = os.getuid()
if uid == 0:
    print("Eres root , puedes ejecutar el script")
else:
    print("No eres root")
print("Opción 1:Muestra información del SSOO e información de la CPU")
print("Opción 2: Pedir un usuario. Si existe, se muestra información sobre él, si no, se crea.")
print(
    "Opción 3: Pedir al usuario un directorio. Comprobar si existe y si es un directorio, en caso contrario, lo crea.")
print("Opción 4: Salir.")
opciones = 0
encontrado = False
while opciones != 4:
    opciones = int(input("Introduce una de las opciones anteriores"))
    if opciones == 1:
        print("Has seleccionado la opcion de mostrar información del ssoo e informacion de la cpu")
        nombre = os.uname().sysname
        print(nombre)
        version = os.uname().version
        print(version)
        print(c.get_cpu_info()["brand_raw"])
    if opciones == 2:
        usuario = input("Introduce el nombre de un usuario ")
        arch = open("/etc/passwd", mode="r")
        lineas = arch.readlines()
        for i in lineas:
            if usuario in i:
                print(i)
                encontrado = True
        if encontrado == True:
            print("El usuario " + usuario + "ya existe")
        else:
            os.system("useradd " + usuario)
        arch.close()
    if opciones == 3:
        directorio = input("Introduce un directorio ")
        existe = (os.path.isdir(directorio))
        if existe == True:
            print("Existe el directorio")
        else:
            print("No existe el directorio")
            os.mkdir(directorio)

    if opciones == 4:
        print("Has elegido la opción de salir del script")
        exit()
