# Exercicio 2.2.2
# O preço de um livro é R$ 24,95, mas as livrarias receberam 40% de desconto.
# O transposte custa R$ 3,00 para o primeiro exemplar e 75 centavos para cada exemplar adicional.
# Qual o custo total para 60 cópias?

valor = 24.95
valor_promo = (60/100) * valor

total_livro = 60 * valor_promo
total_transporte = 3 + 59*0.75

print(total_livro + total_transporte)
