#!/usr/bin/python3
# Autor: https://github.com/dougsabino
#
# Escrever conteúdo no arquivo específico
frase = str(input("Digite a frase para adicionar no arquivo: ").strip())
print(frase)

nome_arquivo = "python.txt"

try:
    with open("python.txt", "a") as arquivo:
        arquivo.write(frase + "\n")
        print("\nSua frase foi adicionada no arquivo", nome_arquivo)
except:
    print("Erro")
