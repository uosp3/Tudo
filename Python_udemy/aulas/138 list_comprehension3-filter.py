# https://www.udemy.com/course/python-3-do-zero-ao-avancado/learn/lecture/34692282#questions/19560002
# Introdução à List comprehension em Python
# List comprehension é uma forma rápida para criar listas
# a partir de iteráveis.
# print(list(range(10)))
import pprint #serve para printar de forma formatada.

def p(v):
    pprint.pprint(v, sort_dicts=False, width=40)

# Mapeamento de dados em list comprehension
produtos = [
    {'nome': 'p1', 'preco': 20, },
    {'nome': 'p2', 'preco': 10, },
    {'nome': 'p3', 'preco': 30, },
]
novos_produtos = [
    {**produto, 'preco': produto['preco'] * 1.05}
    if produto['preco'] > 20 else {**produto}
    for produto in produtos
    if (produto['preco'] >= 20 and produto['preco'] * 1.05) > 10
]
print(novos_produtos)
p(novos_produtos)