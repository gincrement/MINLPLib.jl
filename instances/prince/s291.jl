using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, x[x_Idx])


# ----- Constraints ----- #
@NLconstraint(m, e1, -(x[1]*x[1]+2*x[2]*x[2]+3*x[3]*x[3]+4*x[4]*x[4]+5*x[5]*x[5]+6*x[6]*x[6]+7*x[7]*x[7]+8*x[8]*x[8]+9*x[9]*x[9]+10*x[10]*x[10])+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.