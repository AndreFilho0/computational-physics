# 3
# Escreva uma função que receba um número inteiro e retorne
# uma lista contendo todos os números pares menores que ele.

def in_int_out_list_all_small_pair(x):
  lista = []
  while (x!=0):

    if (x%2 != 0):
      x = x-1
      lista.append(x)
    x=x-2
    lista.append(x)
  return lista

x = int(input(prompt='insira um numero inteiro:  '))
print('esta é a lista de todos numeros pares menor que',x)
print(in_int_out_list_all_small_pair(x))
