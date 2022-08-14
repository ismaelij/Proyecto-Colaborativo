# 9)

Historial5 = (8520, 9510, 7530, 3570, 1590)

def valorMaximo(tupla):
    valor = tupla[0]
    
    for i in range(len(tupla)):
        if tupla[i] > valor:
            valor = tupla[i]

    return valor


print(valorMaximo(Historial5))
