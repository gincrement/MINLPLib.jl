using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3]
@variable(m, x[x_Idx])
set_lower_bound(objvar, -100.0)
set_upper_bound(objvar, 100.0)
set_lower_bound(x[2], -2.0)
set_upper_bound(x[2], 2.0)
set_lower_bound(x[3], -2.0)
set_upper_bound(x[3], 2.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, 100* (x[3]- (x[2])^2)^2+ (1-x[2])^2-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.