import numpy as np
import matplotlib.pyplot as plt 
import latticegen as ls
print("Hello world")
n = input("Please enter number from which the feculty should be calculated: ")
n = int(n)
def faculty(n):
    i = 0
    k= 1
    while i <n:
        k = k*(i+1)
        i +=1
    print("faculty: of", n, "is ", k)

faculty(n)

x = np.linspace(0,10,100)
def p(X):
    y = (x-3)**2 +2
    return y 
y = p(x)

plt.plot(x,y)
plt.show()


