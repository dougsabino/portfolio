#!/usr/bin/python3
# Autor: https://github.com/dougsabino
#
# Cadastro de cliente usando dicionários
nome = input("Digite seu nome: ")
sobrenome = input("Digite seu sobrenome: ")
email = input("Digite seu e-mail: ")

cadastro = {"Nome": nome, "Sobrenome": sobrenome, "E-mail": email}

print("\nDados cadastrados:")
print(cadastro)
print("\nAperte Enter para sair")
input()
