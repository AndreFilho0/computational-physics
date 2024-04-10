# 2
# Escreva uma função que receba uma lista de números e retorne
# o maior valor da lista

lista = []
print("insira quantos numeros quiser na lista, assim que terminar pressione 'f' ")
x = input()
while(x!='f'):
  lista.append(x)
  print(x,'ok')
  x = input()
print('lista finalizada')
print(lista)

def in_list_out_big(array):
  print('organizando lista')
  array.sort(reverse=True)
  print(array)
  print(array[0], 'é o maior numero.')

in_list_out_big(lista)