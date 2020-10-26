Vbar=3.0
T=370.
R=0.083145
P=R*T/Vbar
cat("Ideal gas law ",P,"\n")
a=16.44
b=0.07245
P=R*T/(Vbar-b)-a/(Vbar*(Vbar+b)+(b(Vbar-b)))
cat("Peng-Robinson equation of state",P,"\n")