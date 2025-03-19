# Exercicio 3.1
# Escreva uma função que receba uma string como parâmetro e exiba a string com espaços suficientes
# á frente para que a última letra da string esteja na coluna 70 da tela:

def right_justify(s):
    tam = len(s)
    print(' '*(70-tam), s)


right_justify('monty')
