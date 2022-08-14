# 8)


Historial4 = (7510, 7960, 76180, 800, 4100)

def valorMinimo(tupla):
    valor = tupla[0]
    
    for i in range(len(tupla)):
        if tupla[i] < valor:
            valor = tupla[i]

    return valor


print(valorMinimo(Historial4))
