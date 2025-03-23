import turtle

seta = turtle.Turtle()

seta.forward(50)  # Andar para frente (100 passos)
seta.fd(50)  # Andar para frente abreviado

seta.left(120)  # Virar para esquerda (coordenada em graus)
seta.lt(120)  # Virar para esquerda abreviado (coordenada em graus)

seta.backward(50)  # Andar para trás (100 passos)
seta.bk(100)  # Andar para trás abreviado

seta.right(120)  # Virar para direita (coordenada em graus)
seta.rt(120)  # Virar para direita abreviado (coordenada em graus)

seta.color('blue')  # Alterar cor da seta
seta.width(3)  # Alterar largura da linha

seta.up()  # Levanta a caneta sem riscar
seta.fd(50)
seta.down()  # Abaixa a caneta sem riscar

seta.home()  # Envia a seta para a posição inicial
seta.pos()  # Da as coordenadas da seta

seta.clear()  # Limpar a tela

"""# Desenhando um triângulo equilatero
seta.forward(50)
seta.left(120)
seta.forward(50)
seta.left(120)
seta.forward(50)

seta.clear()"""

"""
# Estrela
seta.color('red')
seta.fillcolor('yellow')
seta.begin_fill()

while True:
    seta.forward(200)
    seta.left(170)
    if abs(seta.pos()) < 1: # Boa maneira de saber quando a tartaruga está de volta à sua posição inicial.
        break

seta.end_fill()"""

turtle.mainloop()  # Fecha a janela apenas após uma ação
