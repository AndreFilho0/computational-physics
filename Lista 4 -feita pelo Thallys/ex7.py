# 7
#Escreva uma função que receba uma string e retorne uma nova
#string contendo apenas os caracteres que são vogais

def vocalize(x):
  x_out = ''
  for char in x:
    if char.lower() in 'aeiou':
      x_out += char
  return x_out

print("insira uma string")
x = input()
print(vocalize(x))