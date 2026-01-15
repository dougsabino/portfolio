#!/usr/bin/python3
# Autor: https://github.com/dougsabino
#
# Exemplo de difference com set
#
conjunto_a = set([1, 2, 3])
print("Conjunto A: \n", conjunto_a)

conjunto_b = set([3, 4, 5])
print("\nConjunto B: \n", conjunto_b)


print("\nConjunto B não contém: ")
print(conjunto_a - conjunto_b)
