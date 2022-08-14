# 6)

Historial2 = (23500, 5960, 2300, 10200, 8900)

total = sum(Historial2)

def gastosSup(tupla):
    counter = 0
    
    for i in Historial2:
        if i > 5000:
            counter += 1
    return counter
    

print(gastosSup(Historial2))
