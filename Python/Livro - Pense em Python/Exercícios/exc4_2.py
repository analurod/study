import turtle
import math


def petal(t, r, angle):
    """Desenha uma pétala usando dois arcos."""
    for _ in range(2):
        arc(t, r, angle)
        t.left(180 - angle)


def arc(t, r, angle):
    """Desenha um arco de círculo com o raio r e ângulo especificado."""
    arc_length = 2 * math.pi * r * angle / 360
    n = int(arc_length / 3) + 1  # Divide em segmentos pequenos
    step_length = arc_length / n
    step_angle = angle / n

    for _ in range(n):
        t.forward(step_length)
        t.left(step_angle)


def flower(t, n, r, angle):
    """Desenha uma flor com n pétalas."""
    for _ in range(n):
        petal(t, r, angle)
        t.left(360 / n)


t = turtle.Turtle()

t.color('pink')
t.width(5)

t.penup()
t.goto(0, 0)
t.pendown()
flower(t, 10, 100, 30)  # Flor com 10 pétalas


turtle.mainloop()
