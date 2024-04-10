#9
#Escreva uma função que receba uma lista de números e retorne
#uma nova lista contendo apenas os valores únicos (ou seja, sem
#repetições).

def no_rep(x):
  lista_no_rep = list(set(lista))
  return lista_no_rep

lista = []
print("insira numeros no array, assim que encerrar insira 'f'.")
x = input()
while(x!='f'):
  lista.append(float(x))
  print(x,'ok')
  x = input()
print('lista finalizada')
print(no_rep(lista46))