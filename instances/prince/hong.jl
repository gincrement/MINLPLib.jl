using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4]
@variable(m, x[x_Idx])
set_lower_bound(x[1], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[3], 0.0)
set_upper_bound(x[1], 1.0)
set_upper_bound(x[2], 1.0)
set_upper_bound(x[3], 1.0)
set_upper_bound(x[4], 1.0)


# ----- Constraints ----- #
@constraint(m, e1, x[1]+x[2]+x[3]+x[4] == 1.0)
@NLconstraint(m, e2, -(0.08*exp(9.5*x[1])+3.95*exp(5.5*x[2])+1657834*exp((-13.32)-5.92*x[3])+0.89*exp(7*x[4]))+objvar == -3.58)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.