#!/usr/bin/python3
# Autor: https://github.com/dougsabino
# Editar uma lista
lista = []

# Função do menu
def menu(option):
    match option:
        case "1":
            adicionar_item = input("Digite o item para adicionar na lista: ").strip()
            lista.append(adicionar_item)
            print('\033c', end='')
        case "2":
            retirar_item = input("Digite o item para retirar da lista: ").strip()
            lista.remove(retirar_item)
            print('\033c', end='')
        case "3":
            print("Quantidade de itens:")
            print(*lista, sep="\n")            
            print("\nAperte Enter para voltar ao menu.")
            input()
            print('\033c', end='')
        case "4":
            print("\nSaindo...")
            return True
        case _:
            print("Opção inválida.")
            print('\033c', end='')
    return False

# Loop de escolha
while True:
    print("Menu:\n")
    print("1. Adicionar item na lista")
    print("2. Retirar item da lista")
    print("3. Exibir lista")
    print("4. Sair\n")
    user_input = input("Escolha uma opção: ")

    if menu(user_input):
        break
