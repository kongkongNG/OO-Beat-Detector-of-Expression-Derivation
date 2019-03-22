from sympy import *
import sys
x = Symbol("x")
mystr = input()
anstr = input()
if (mystr==anstr):
    print(True)
    sys.exit(0)
mystr = mystr.replace("^", "**")  #change '^'into'**' for recognition
anstr = anstr.replace("^", "**")
anexp = eval(anstr)
myexp = eval(mystr)               # turn str into expression
if (isinstance(myexp, int) & isinstance(anexp, int)):
    print(myexp==anexp)
else:
    print(myexp.equals(anexp))
