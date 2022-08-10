Clientes = ['Juan', 'Mario', 'Ariel', 'Josefina', 'Marianella']

swapped = True 

while swapped:
    swapped = False  
    for i in range(len(Clientes) - 1):
        if Clientes[i] > Clientes[i + 1]:
            swapped = True  
            Clientes[i], Clientes[i + 1] = Clientes[i + 1], Clientes[i]

print(Clientes)
