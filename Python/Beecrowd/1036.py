""" Exercício 1036
Leia 3 valores de ponto flutuante e efetue o cálculo das raízes da equação de Bhaskara. Se não for possível calcular as raízes, mostre a mensagem correspondente “Impossivel calcular”, caso haja uma divisão por 0 ou raiz de numero negativo.

Entrada
Leia três valores de ponto flutuante (double) A, B e C.

Saída
Se não houver possibilidade de calcular as raízes, apresente a mensagem "Impossivel calcular". Caso contrário, imprima o resultado das raízes com 5 dígitos após o ponto, com uma mensagem correspondente conforme exemplo abaixo. Imprima sempre o final de linha após cada mensagem."""

import math


def calc_delta(a, b, c):
    delta = b ** 2 - 4 * a * c

    return delta


def bhaskara(a, b, c):
    d = calc_delta(a, b, c)

    if d < 0:
        print('Impossivel calcular')
    else:
        r1 = (-b + math.sqrt(d)) / (2 * a)
        r2 = (-b - math.sqrt(d)) / (2 * a)

        print("R1 = %.5f" % r1)
        print("R2 = %.5f" % r2)


coef = input()
coef_r = coef.split()

for i in range(3):
    coef_r[i] = float(coef_r[i])


if coef_r[0] == 0:
    print('Impossivel calcular')
else:
    bhaskara(coef_r[0], coef_r[1], coef_r[2])
