""" Exercício 1037
Você deve fazer um programa que leia um valor qualquer e apresente uma mensagem dizendo em qual dos seguintes intervalos ([0,25], (25,50], (50,75], (75,100]) este valor se encontra. Obviamente se o valor não estiver em nenhum destes intervalos, deverá ser impressa a mensagem “Fora de intervalo”.

O símbolo ( representa "maior que". Por exemplo:
[0,25]  indica valores entre 0 e 25.0000, inclusive eles.
(25,50] indica valores maiores que 25 Ex: 25.00001 até o valor 50.0000000

Entrada
O arquivo de entrada contém um número com ponto flutuante qualquer.

Saída
A saída deve ser uma mensagem conforme exemplo abaixo.
"""

x = float(input())

if x < 0 or x > 100:
    print('Fora de intervalo')
else:
    if 0 <= x <= 25:
        print('Intervalo [0,25]')
    if 25 < x <= 50:
        print('Intervalo (25,50]')
    if 50 < x <= 75:
        print('Intervalo (50,75]')
    if 75 < x <= 100:
        print('Intervalo (75,100]')
