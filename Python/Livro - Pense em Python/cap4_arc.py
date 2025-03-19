import turtle
import math


def polylinet(t, n, lenght, angle):
    """"Desenha n segmentos de reta com o comprimento dado e
    ãngulo (em graus) entre eles. t é um turtle"""  # <- Isso é um docstring - string no inicio da função que explica a interface
    for i in range(n):
        t.fd(lenght)
        t.lt(angle)


def polygon(t, n, lenght):
    angle = 360 / n
    polylinet(t, n, lenght, angle)


def arc(t, r, angle):
    arc_lenght = 2 * math.pi * r * angle / 360
    n = int(arc_lenght / 3) + 1
    step_lenght = arc_lenght / n
    step_angle = angle / n

    for i in range(n):
        t.fd(step_lenght)
        t.lt(step_angle)


def circle(t, r):
    arc(t, r, 360)


bob = turtle.Turtle()
r = 50

circle(bob, r)

turtle.mainloop()
