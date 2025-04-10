# Exercícios do Capítulo 5

"""Exercício 5.1
O módulo time fornece uma função também chamado time, que devolve a hora média de Greenwich na "época", que é
um momento arbitrário, usado como ponto de referência. Em sistemas UNIX, a época é 01/01/1970. Escreva um script
que leia a hora atual e a converta em um tempo em horas, minutos e segundos e o número de dias desde a época.
"""
import time as t

# Pega o tempo atual em segundos desde 01/01/1970
hora_epoca = t.time()

# Calcula dias
dias = int(hora_epoca / (60*60*24))

# Calcula Horas
hora = int((hora_epoca % (60*60*24)) / (60*60))

# Calcula Minutos
minutos = int((hora_epoca % (60*60)) / 60)

# #Calcula Sgeundos
segundos = int(hora_epoca % (60))

print(f'Dias: {dias}\nHoras: {hora}\nMinutos: {minutos}\nSegundos:{segundos}')


"""Exercício 5.2
O último teorema de Fermat diz que não existem números inteiros a, b, c, tais que a**n + b**n == c**n para 
quaisquer valores de n maiores que 2.

1- Escreva uma função chamada check_fermat que receba quatro parâmetros (a, b, c, n) verifique se o teorema
de Fermat se mantém. Se n for maior que 2 e a**n + b**n == c**n o programa deve imprimir "Holy smokes, Fermat
was wrong!", senão o programa deve exibir "No, that doesn't work."

2- Escreva uma função que peça ao usuário para digitar valores de a, b, c e n, os converta em números inteiros 
e use check_fermat para verificar se violam o teorema.
"""

# Parte 1


def check_fermat(a, b, c, n):
    if n > 2 and (a**n + b**n == c**n):
        print("Holy smokes, Fermatwas wrong!")
    else:
        print("No, that doesn't work.")


check_fermat(3, 3, 3, 3)

# Parte 2
a = int(input("Digite a: "))
b = int(input("Digite b: "))
c = int(input("Digite c: "))
n = int(input("Digite n: "))

check_fermat(a, b, c, n)


"""Exercício 5.3
Se você tiver três gravetos, pode ser que consiga arranjá-los em um triângulo ou não. Há um teste simples para ver se
é possível formar um triângulo para quaisquer três comprimentos:

Se algum dos três comprimentos for maior que a soma dos outros dois, então você não pode formar um triângulo. Senão, você
pode.

1- Escreva uma função chamada is_triangle que receba três números inteiros como argumentos, e que imprima "Yes" ou "No"
dependendo da possibilidade de formar ou não um triângulo com os comprimentos dados.

2- Escreva uma função que peça ao usuário para digitar trÊs comprimentos de graveto e os converta em números inteiros e 
use is_triangle para verificar se é possivel formar ou não um triângulo.
"""

# Parte 1


def is_triangle(a, b, c):
    if (a+b) < c or (b+c) < a or (a+c) < b:
        print("No")
    else:
        print("Yes")


is_triangle(2, 3, 5)

# Parte 2
a = int(input("Digite a: "))
b = int(input("Digite b: "))
c = int(input("Digite c: "))

is_triangle(a, b, c)
