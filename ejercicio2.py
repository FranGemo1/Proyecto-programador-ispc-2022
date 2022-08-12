# Crear una lista en Python denominada “Dueno2”  y recorrerla con un bucle  mostrando sus elementos por pantalla con excepción del DNI y el apellido. Los elementos de la lista son:
#23546987,  “Maria”,  “Perez”, 4789689,  “Pueyrredon  811”

from operator import length_hint


Dueño2=[23546987,  "Maria",  "Perez", 4789689, "Pueyrredon 811"]

print("LISTA NUEVA")
for i in range (len(Dueño2)):
    if Dueño2[i]==23546987  or Dueño2[i]=="Perez":
        continue;


    print(Dueño2[i])


