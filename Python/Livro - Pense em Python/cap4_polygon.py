import turtle


def polygon(t, n, lenght):
    degress = 360/n

    for i in range(n):
        t.fd(lenght)
        t.lt(degress)


bob = turtle.Turtle()
lenght = 100
n = 5
polygon(bob, n, lenght)

turtle.mainloop()
