# 6
# Escreva uma função que receba uma lista de números e retorne
# a média dos valores.

lista = []
print("insira numeros no array para calcular a média, assim que encerrar insira 'f'.")
x = input()
while(x!='f'):
  lista.append(x)
  print(x,'ok')
  x = input()
print('lista finalizada')

def media(x):
  soma = 0
  for i in range(len(x)):
    soma = soma+float(x[i])
  return soma/len(x)
5
print(media(lista))