# 8
# Escreva um programa que receba uma lista de números e
# imprima apenas os valores que são divisíveis por 3

lista = []
print("insira numeros no array, assim que encerrar insira 'f'.")
x = input()
while(x!='f'):
  lista.append(float(x))
  print(x,'ok')
  x = input()
print('lista finalizada')
x_out=[]
for i in range(len(lista)):
  if ((lista[i]%3) == 0):
    x_out.append(lista[i])
print('essa é a lista de numeros divisiveis por 3')
print(x_out)