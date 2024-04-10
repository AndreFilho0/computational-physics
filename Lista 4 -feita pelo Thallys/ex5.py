# 5
# Escreva uma função que receba uma lista de strings e retorne
# uma nova lista contendo apenas as strings que possuem mais de
# 5 caracteres.

def min_len_5(x):
  x_out = []
  for i in range(len(x)):
    if len(x[i])>5:
      x_out.append(x[i])
  return x_out

lista = []
print("insira palavras no array, para encerrar insira 'f'.")
x = input()
while(x!='f'):
  lista.append(x)
  print(x,'ok')
  x = input()
print('lista finalizada')
print(min_len_5(lista))