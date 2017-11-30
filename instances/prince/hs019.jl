using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2]
@variable(m, x[x_Idx])
setlowerbound(x[2], 0.0)
setlowerbound(x[1], 13.0)
setupperbound(x[1], 100.0)
setupperbound(x[2], 100.0)


# ----- Constraints ----- #
@NLconstraint(m, e1,  ((-5)+x[1])^2+ ((-5)+x[2])^2 >= 100.0)
@NLconstraint(m, e2,  ((-5)+x[2])^2+ ((-6)+x[1])^2 <= 82.81)
@NLconstraint(m, e3, -((-10+x[1])*(-10+x[1])*(-10+x[1])+(-20+x[2])*(-20+x[2])*(-20+x[2]))+objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 