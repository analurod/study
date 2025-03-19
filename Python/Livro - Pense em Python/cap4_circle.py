import turtle
import math


def polygon(t, n, lenght):
    degress = 360/n

    for i in range(n):
        t.fd(lenght)
        t.lt(degress)


def circle(t, r):
    circum = 2 * math.pi * r
    n = int(circum / 3) + 1
    lenght = circum / n

    polygon(t, r, lenght)


bob = turtle.Turtle()
r = 500
circle(bob, r)

turtle.mainloop()
