import turtle

bob = turtle.Turtle()

bob.fd(100)  # fd avança em pixels
bob.lt(90)  # vira para a esquerda em graus
bob.fd(100)
bob.lt(90)
bob.fd(100)
bob.lt(90)
bob.fd(100)

for i in range(4):
    bob.fd(100)
    bob.rt(90)


turtle.mainloop()
