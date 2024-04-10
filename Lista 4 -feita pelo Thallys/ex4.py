# 4
# Escreva um programa que receba uma string do usuário e
# determine se ela é um palíndromo (ou seja, se ela é igual quando
# lida de trás para frente).

def palindromo_1_0_1(x):
  x.replace(" ", "").lower()
  return x==x[::-1]

print("seu texto é um palindromo ? insira-o")
x = input()
print(palindromo_1_0_1(x))