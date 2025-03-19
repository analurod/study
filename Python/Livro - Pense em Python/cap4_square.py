import turtle


def square(t, lenght):

    for i in range(4):
        t.fd(lenght)
        t.lt(90)


bob = turtle.Turtle()
lenght = 200
square(bob, lenght)

turtle.mainloop()
