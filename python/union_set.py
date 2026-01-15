#!/usr/bin/python3
# Autor: https://github.com/dougsabino
#
# Exemplo de união com set
#
conjunto_a = [1, 2, 3]
print("Conjunto A: \n", conjunto_a)

conjunto_b = [4, 5, 6]
print("\nConjunto B: \n", conjunto_b)

union = set(conjunto_a) | set(conjunto_b)

print("\nA União dos conjuntos é: ")
print(union)
