#10
#Escreva um programa que receba uma lista de strings e ordene
#os valores em ordem alfabética.

lista = []
print("insira palavras no array, para encerrar insira 'f'.")
x = input()
while(x!='f'):
  lista.append(x)
  print(x,'ok')
  x = input()
print('lista finalizada')

lista.sort()
print(lista)