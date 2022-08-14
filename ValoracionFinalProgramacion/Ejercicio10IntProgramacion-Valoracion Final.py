# Crear una lista denominada “Clientes” con los nombres de los diferentes dueños de perros: Juan,  Mario,  Ariel,  Josefina,  Marianella.
# Ordenarla alfabéticamente y mostrarla por pantalla.

Clientes = ['Juan', 'Mario', 'Ariel', 'Josefina', 'Marianella']

swapped = True 

while swapped:
    swapped = False  
    for i in range(len(Clientes) - 1):
        if Clientes[i] > Clientes[i + 1]:
            swapped = True  
            Clientes[i], Clientes[i + 1] = Clientes[i + 1], Clientes[i]

print(Clientes)
