from sympy import *
import sys
x = Symbol("x")
# EOF
try:
    in_str = input()
except Exception as e:
    print("WRONG FORMAT!")              # Wrong Format!
    sys.exit(0)

in_str = in_str.replace("^", "**")  #change '^'into'**' for recognition

# wrong expression
try:
    in_exp = eval(in_str)               # turn str into expression
except Exception as e:
    print("WRONG FORMAT!")              # Wrong Format!
    sys.exit(0)

res = diff(in_exp)
print(str(res).replace("**", "^"))
#res = diff(in_exp).subs(x,2)
#print(res)
