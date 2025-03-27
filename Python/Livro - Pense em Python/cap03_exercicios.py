# Exercícios do Capítulo 3

"""Exercício 3.1
Escreva uma função chamada right_justify, que receba uma string chamada s como parâmetro e exiba a string 
com espaços suficientes à frente para que a última letra da string esteja na coluna 70 da tela
"""


def right_justify(s):
    espacos = 70 - len(s)
    string = ' '*espacos + s
    print(string)


right_justify('teste')

"""Exercício 3.2
Um objeto de função é um valor que pode ser atribuído a uma variável ou passado como argumento. Por exemplo,
do_twice é uma função que toma um objeto de função como argumento e o chama duas vezes:

def do_twice(f):
    f()
    f()

Aqui está um exemplo que usa do_twice para chamar a função chamada print_spam() duas vezes:

def print_spam():
    print('Spam')

do_twice(print_spam)

1. Digite esse exemplo e teste-o.
2. Altere do_twice para que receba dois argumentos, um objeto de função e um valor, e chame a função 
duas vezes passando o valor como um argumento.
3. Copie a definição de print_twice que aparece anteriormente no capitulo no seu script.
4. Use a versão alterada de do_twice para chamar print_twice duas vezes, passando 'spam' como argumento.
5. Defina uma função nova chamado do_four que receba um objeto de função e um valor e chame a função quantro vezes,
passando o valor como um parâmetro. Deve haver só duas afirmações no corpo desta funçõa, não quatro.
"""

# 1


def print_spam():
    print('Spam')


def do_twice(f):
    f()
    f()


do_twice(print_spam)

# 2


def do_twice(f, n):
    f(n)
    f(n)

# 3 e 4


def print_twice(bruce):
    print(bruce)
    print(bruce)


def do_twice(f, n):
    f(n)
    f(n)


do_twice(print_twice, 'spam')

# 5


def do_four(f, n):
    for i in range(2):
        f(n)


do_four(print_twice, 'teste')
